//
//  NestedOptionCell.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 28/10/24.
//

import UIKit

class NestedOptionCell: UITableViewCell {
    static let reuseIdentifier = "NestedOptionCell"
    
    private var tapHander: ((String)->Void)?
    
    private lazy var titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Option"
        label.textColor = .blue
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return label
    }()

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
        self.addSubview(titleLable)

        NSLayoutConstraint.activate([
            titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            titleLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            titleLable.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
    }
    
    @objc func didTap() {
        tapHander?(titleLable.text ?? "")
    }
    
    func configureView(with text: String, tapHander: ((String)->Void)?) {
        self.titleLable.text = text
        self.tapHander = tapHander
    }
    
}
