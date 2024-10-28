//
//  MiniMovieCellTableViewCell.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 28/10/24.
//

import UIKit

class MiniMovieCell: UITableViewCell {
    static let reuseIdentifier = "MiniMovieCell"
    
    private lazy var titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Option"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.lineBreakMode = .byTruncatingTail
        label.font = .preferredFont(forTextStyle: .headline)
        return label
    }()

    private lazy var languageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.setContentHuggingPriority(.defaultLow, for: .vertical)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .preferredFont(forTextStyle: .body)
        return label
    }()
    
    private lazy var languageFixedText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Language: "
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        label.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        label.numberOfLines = 1
        label.font = .preferredFont(forTextStyle: .body)
        return label
    }()
    
    private lazy var languageHStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [languageFixedText, languageLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .top
        stack.spacing = 5
        stack.setContentHuggingPriority(.defaultLow, for: .vertical)
        return stack
    }()
    
    private lazy var yearLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2000"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 1
        label.font = .preferredFont(forTextStyle: .body)
        return label
    }()
    
    private lazy var vStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLable, languageHStack, yearLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 6
        return stack
    }()
    
    private lazy var thumbnailView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var hStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [thumbnailView, vStack])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 10
        return stack
    }()
    
    private var tapHander: (()->Void)?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTap))
        self.addGestureRecognizer(tapGesture)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        contentView.addSubview(hStack)

        NSLayoutConstraint.activate([
            hStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            hStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            hStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            hStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            thumbnailView.widthAnchor.constraint(equalToConstant: 80),
            thumbnailView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc func didTap() {
        tapHander?()
    }
    
    func configureView(movieModel: MovieDataMiniModel, tapHander: (()-> Void)?) {
        titleLable.text = movieModel.title
        languageLabel.text = movieModel.language
        yearLabel.text = "Year: \(movieModel.year)"
        thumbnailView.setImage(from: movieModel.poster)
        self.tapHander = tapHander
    }
}

extension UIImageView {
    func setImage(from urlString: String) {
        // Make sure the URL is valid
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        // Perform the URL request
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Check for errors and data validity
            if let error = error {
                print("Error fetching the image: \(error)")
                DispatchQueue.main.async {
                    self.image = UIImage(named: "PlaceHolder")
                }
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
                print("Failed to load image data")
                DispatchQueue.main.async {
                    self.image = UIImage(named: "PlaceHolder")
                }
                return
            }
            
            // Update the UIImageView on the main thread
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume() // Start the download task
    }
}
