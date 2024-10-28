//
//  MovieListViewController.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 28/10/24.
//

import UIKit

class MovieListViewController: UIViewController {
    
    let dataSource: [MovieDataMiniModel]
    
    init(dataSource: [MovieDataMiniModel]) {
        self.dataSource = dataSource
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var tableView: UITableView = {
        let tableV = UITableView(frame: .zero)
        tableV.translatesAutoresizingMaskIntoConstraints = false
        tableV.delegate = self
        tableV.dataSource = self
        tableV.sectionHeaderTopPadding = 0
        tableV.register(MiniMovieCell.self, forCellReuseIdentifier: MiniMovieCell.reuseIdentifier)
        return tableV
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
        ])
    }
    
    func navigateToMovieDetailController(with movieModel: MovieDataMiniModel) {
        let movieDetailVC = MovieDetailViewController(movie: movieModel)
        self.present(movieDetailVC, animated: true)
    }
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let miniMovieCell = tableView.dequeueReusableCell(withIdentifier: MiniMovieCell.reuseIdentifier, for: indexPath) as? MiniMovieCell else {
            fatalError("Failed to cast MiniMovieCell")
        }
        let optionData = dataSource[indexPath.row]
        miniMovieCell.configureView(movieModel: optionData) { [weak self] in
            self?.navigateToMovieDetailController(with: optionData)
        }
        
        return miniMovieCell
    }
    
    
}
