//
//  GFItemInfoView.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 3/1/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

enum ItemInfoType {
	case repos, gists, followers, following
}

class GFItemInfoView: UIView {

	let symbolImageView = UIImageView()
	let titleLabel = GFTitleLabel(textAlignment: .left, fontSize: 14)
	let countLabel = GFTitleLabel(textAlignment: .center, fontSize: 14)

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}


	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


	func configure() {
		addSubviews(symbolImageView, titleLabel, countLabel)

		symbolImageView.translatesAutoresizingMaskIntoConstraints = false
		symbolImageView.contentMode = .scaleAspectFill
		symbolImageView.tintColor = .label

		NSLayoutConstraint.activate([
			symbolImageView.topAnchor.constraint(equalTo: topAnchor),
			symbolImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
			symbolImageView.heightAnchor.constraint(equalToConstant: 20),
			symbolImageView.widthAnchor.constraint(equalToConstant: 20),

			titleLabel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
			titleLabel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
			titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
			titleLabel.heightAnchor.constraint(equalToConstant: 18),

			countLabel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
			countLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
			countLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
			countLabel.heightAnchor.constraint(equalToConstant: 18)
		])
	}


	func set(itemInfoType: ItemInfoType, withCount count: Int) {
		switch itemInfoType {
		case .gists:
			symbolImageView.image = UIImage(symbol: .gists)
			titleLabel.text = "Public Repos"
		case .repos:
			symbolImageView.image = UIImage(symbol: .repos)
			titleLabel.text = "Public Gists"
		case .followers:
			symbolImageView.image = UIImage(symbol: .followers)
			titleLabel.text = "Followers"
		case .following:
			symbolImageView.image = UIImage(symbol: .following)
			titleLabel.text = "Following"
		}

		countLabel.text = String(count)
	}
}
