//
//  OptionCategoryCell.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 28/10/24.
//

import UIKit

class OptionCategoryCell: UITableViewHeaderFooterView {
    static let reuseIdentifier = "OptionCategoryCell"
    private var isOptionSelected: Bool = false {
        didSet {
            if isOptionSelected {
                imageActionView.image = UIImage(systemName: "chevron.down")
            } else {
                imageActionView.image = UIImage(systemName: "chevron.right")
            }
        }
    }
    
    private lazy var titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Option"
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return label
    }()
    
    private lazy var separatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.backgroundColor = .lightGray.withAlphaComponent(0.5)
        return view
    }()
    
    private lazy var imageActionView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "chevron.right")
        image.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return image
    }()
    
    private var tapHandler: (() -> Void)?
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTap))
        self.addGestureRecognizer(tapGesture)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTap() {
        isOptionSelected.toggle()
        tapHandler?()
    }
    
    func setupView() {
        contentView.addSubview(titleLable)
        contentView.addSubview(imageActionView)
        contentView.addSubview(separatorView)
        
        NSLayoutConstraint.activate([
            titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            titleLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            titleLable.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            imageActionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            imageActionView.leadingAnchor.constraint(equalTo: titleLable.trailingAnchor, constant: 20),
            imageActionView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            separatorView.heightAnchor.constraint(equalToConstant: 1),
            separatorView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            separatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    func configure(text: String, tapHandler: @escaping () -> Void) {
        self.tapHandler = tapHandler
        titleLable.text = text
    }
}
