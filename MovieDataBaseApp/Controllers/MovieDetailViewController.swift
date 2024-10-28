//
//  MovieDetailViewController.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 28/10/24.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    // MARK: - Properties
    private let movie: MovieDataMiniModel

    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let plotLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let castAndCrewLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let releaseDateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let genreLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ratingLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .systemYellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializer
    init(movie: MovieDataMiniModel) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configure(with: movie)
    }

    private func setupUI() {
        view.backgroundColor = .white

        view.addSubview(posterImageView)
        view.addSubview(titleLabel)
        view.addSubview(plotLabel)
        view.addSubview(castAndCrewLabel)
        view.addSubview(releaseDateLabel)
        view.addSubview(genreLabel)
        view.addSubview(ratingLabel)

        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([

            posterImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            posterImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            posterImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            posterImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
            
            titleLabel.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            plotLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            plotLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            plotLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            castAndCrewLabel.topAnchor.constraint(equalTo: plotLabel.bottomAnchor, constant: 16),
            castAndCrewLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            castAndCrewLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            releaseDateLabel.topAnchor.constraint(equalTo: castAndCrewLabel.bottomAnchor, constant: 16),
            releaseDateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            genreLabel.topAnchor.constraint(equalTo: releaseDateLabel.bottomAnchor, constant: 8),
            genreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            ratingLabel.topAnchor.constraint(equalTo: genreLabel.bottomAnchor, constant: 8),
//            /*ratingLabel*/.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -2),
            ratingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
    }

    private func configure(with movie: MovieDataMiniModel) {
       
        titleLabel.text = movie.title
        plotLabel.text = movie.plot
        castAndCrewLabel.text = "Cast & Crew: \(movie.actors)"
        releaseDateLabel.text = "Release Date: \(movie.released)"
        genreLabel.text = "Genre: \(movie.genre)"
        ratingLabel.text = "Rating: \(movie.ratings[0].source.rawValue)"
        posterImageView.setImage(from: movie.poster)
    }
}
