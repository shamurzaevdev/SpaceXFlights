//
//  RocketGeneralCell.swift
//  SpaceXflights
//
//  Created by Эл on 28.08.2022.
//

import UIKit

final class RocketGeneralCell: BaseCell {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override var viewModel: ViewModelProtocol? {
        didSet{ updateViews() }
    }
    override func updateViews() {
        guard let model = viewModel as? RocketGeneralInfoViewModel else { return }
        titleLabel.text = model.text
        descriptionLabel.text = model.descript
    }
    
    func setupConstraints() {
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20).isActive = true
 //       titleLabel.widthAnchor.constraint(equalToConstant: 10.0).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: -150).isActive = true
//        descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
//        descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    }
}
