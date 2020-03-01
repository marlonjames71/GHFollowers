//
//  GFItemInfoVC.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 3/1/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

class GFItemInfoVC: UIViewController {

	let stackView = UIStackView()
	let itemInfoViewOne = GFItemInfoView()
	let itemInfoViewTwo = GFItemInfoView()
	let actionButton = GFButton()

	var user: User


	init(user: User) {
		self.user = user
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	

    override func viewDidLoad() {
        super.viewDidLoad()
		configureBackgroundView()
		layoutUI()
    }


	private func configureBackgroundView() {
		view.layer.cornerRadius = 18
		view.layer.cornerCurve = .continuous
		view.backgroundColor = .secondarySystemBackground
	}


	private func configureStackView() {
		stackView.axis = .horizontal
		stackView.distribution = .equalSpacing

		[itemInfoViewOne, itemInfoViewTwo].forEach(stackView.addArrangedSubview)
	}


	private func layoutUI() {
		view.addSubviews(stackView, actionButton)

		stackView.translatesAutoresizingMaskIntoConstraints = false
		let padding: CGFloat = 20

		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
			stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
			stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
			stackView.heightAnchor.constraint(equalToConstant: 50),

			actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
			actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
			actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
			actionButton.heightAnchor.constraint(equalToConstant: 44),
		])
	}
}
