//
//  ViewController.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 27/10/24.
//

import UIKit

enum Options: String, CaseIterable {
    case Year
    case Genre
    case Directors
    case Actors
    case AllMovies = "All Movies"
}

protocol MovieListDataProtocol {}

class ViewController: UIViewController {
    
    private var optionListDataSource: [Options: [MovieListDataProtocol]]?
    private var movieDataModelTransfromer = MovieDataTransformer(movies: [])
    private var hasUserSearchText: Bool = false {
        didSet {
            tableView.reloadData()
        }
    }
    
    var explanedSections: Set<Int> = []
    var currentlySelectedSection: Int? {
        didSet {
            var indexPath = [IndexPath]()
            for i in 0..<optionListDataSource![Options.allCases[currentlySelectedSection!]]!.count {
                indexPath.append(IndexPath(row: i, section: currentlySelectedSection!))
            }
            if explanedSections.contains(currentlySelectedSection!) {
                explanedSections.remove(currentlySelectedSection!)
                tableView.deleteRows(at: indexPath, with: .fade)
            } else {
                explanedSections.insert(currentlySelectedSection!)
                tableView.insertRows(at: indexPath, with: .fade)
            }
        }
    }
    
    private lazy var tableView: UITableView = {
        let tableV = UITableView(frame: .zero)
        tableV.translatesAutoresizingMaskIntoConstraints = false
        tableV.delegate = self
        tableV.dataSource = self
        tableV.sectionHeaderTopPadding = 0
        tableV.register(OptionCategoryCell.self, forHeaderFooterViewReuseIdentifier: OptionCategoryCell.reuseIdentifier)
        tableV.register(NestedOptionCell.self, forCellReuseIdentifier: NestedOptionCell.reuseIdentifier)
        tableV.register(MiniMovieCell.self, forCellReuseIdentifier: MiniMovieCell.reuseIdentifier)
        return tableV
    }()
    
    private lazy var searchBarView: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.frame = CGRect(x: 0, y: 0, width: 200, height: 70)
        searchBar.delegate = self
        searchBar.searchBarStyle = UISearchBar.Style.default
        searchBar.placeholder = "Search for movies by title/genre/actor/director"
        searchBar.sizeToFit()
        return searchBar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableHeaderView = searchBarView
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
        ])
        
        let dataService = MovieDataService()
        let models = dataService.fetchALLMovies()
        movieDataModelTransfromer.update(modelData: models)
        prepareDataSource(with: movieDataModelTransfromer)
    }
    
    func prepareDataSource(with modelTransformer: MovieDataTransformer) {
        self.optionListDataSource = [
            .Year: modelTransformer.getAllPossibleYears(),
            .Genre: modelTransformer.getAllPossibleGenre(),
            .Directors: modelTransformer.getAllPossibleDirectorNames(),
            .Actors: modelTransformer.getAllPossibleActorNames(),
            .AllMovies: modelTransformer.getAllMiniMovieData()
        ]

    }
    
    func navigateToMovieListController(with movieModels: [MovieDataModel]) {
        let miniMoviesDatasource = movieDataModelTransfromer.getAllMiniMovieData(from: movieModels)
        let movieListVC = MovieListViewController(dataSource: miniMoviesDatasource)
        self.present(movieListVC, animated: true)
    }
    
    func navigateToMovieDetailController(with movieModel: MovieDataMiniModel) {
        let movieDetailVC = MovieDetailViewController(movie: movieModel)
        self.present(movieDetailVC, animated: true)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if hasUserSearchText {
            return nil
        }
        guard let headerCell = tableView.dequeueReusableHeaderFooterView(withIdentifier: OptionCategoryCell.reuseIdentifier) as? OptionCategoryCell else {
            fatalError("No header cell registered")
        }
        headerCell.configure(text: Options.allCases[section].rawValue) { [weak self, section] in
            self?.currentlySelectedSection = section
        }
        return headerCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if hasUserSearchText {
            return 0
        }
        return 50
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if hasUserSearchText {
            if Options.allCases[section] == .AllMovies {
                return optionListDataSource![Options.AllMovies]!.count
            } else {
                return 0
            }
        }
        
        if explanedSections.contains(section) {
            return optionListDataSource![Options.allCases[section]]!.count
        }
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return optionListDataSource?.count ?? 0
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let option = Options.allCases[indexPath.section]
        
        guard let optionListDataSource, let optionList = optionListDataSource[option] else {
            fatalError("Data source can't be nil")
        }
        
        if option != .AllMovies && hasUserSearchText == false {
            guard let nestedOptionCell = tableView.dequeueReusableCell(withIdentifier: NestedOptionCell.reuseIdentifier, for: indexPath) as? NestedOptionCell else {
                fatalError("Failed to cast NestedOptionCell")
            }
            guard let optionData = optionList[indexPath.row] as? String else {
                fatalError("Failed to Retrive optionData")
            }
            nestedOptionCell.configureView(with: optionData) { [weak self] text in
                guard let self else { return }
                switch option {
                case .Actors:
                    self.navigateToMovieListController(with: self.movieDataModelTransfromer.getMoviesBy(actor: text))
                case .Year:
                    self.navigateToMovieListController(with: self.movieDataModelTransfromer.getMoviesBy(year: text))
                case .Genre:
                    self.navigateToMovieListController(with: self.movieDataModelTransfromer.getMoviesBy(genre: text))
                case .Directors:
                    self.navigateToMovieListController(with: self.movieDataModelTransfromer.getMoviesBy(director: text))
                default: break
                }
            }
            return nestedOptionCell
        } else {
            
            guard let miniMovieCell = tableView.dequeueReusableCell(withIdentifier: MiniMovieCell.reuseIdentifier, for: indexPath) as? MiniMovieCell else {
                fatalError("Failed to cast MiniMovieCell")
            }
            guard let optionData = optionList[indexPath.row] as? MovieDataMiniModel else {
                fatalError("Failed to Retrive optionData")
            }
            miniMovieCell.configureView(movieModel: optionData) { [weak self] in
                self?.navigateToMovieDetailController(with: optionData)
            }
            
            return miniMovieCell
        }

    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text, var optionListDataSource else {
            return
        }
        let miniMovies = movieDataModelTransfromer.getMiniMoviesBy(search: text)
        print(miniMovies.count, "count")
        optionListDataSource[.AllMovies] = miniMovies
        hasUserSearchText = true
        searchBarView.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            print("Clear button clicked")
            hasUserSearchText = false
            
        }
    }
}
