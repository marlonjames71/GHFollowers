//
//  GHAlertVC.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 1/2/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

class GFAlertVC: UIViewController {

	let alertContainer = GFAlertContainer()
	let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
	let messageLabel = GFBodyLabel(textAlignment: .center)
	let actionButton = GFButton(backgroundColor: .systemPink, title: "OK")

	var alertTitle: String?
	var message: String?
	var buttonTitle: String?

	let padding: CGFloat = 20

	init(title: String, message: String, buttonTitle: String) {
		super.init(nibName: nil, bundle: nil)
		alertTitle = title
		self.message = message
		self.buttonTitle = buttonTitle
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
		configureAlertContainerView()
		configureTitleLabel()
		configureActionButton()
		configureMessageLabel()
    }

	func configureAlertContainerView() {
		view.addSubview(alertContainer)

		NSLayoutConstraint.activate([
			alertContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			alertContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			alertContainer.widthAnchor.constraint(equalToConstant: 280),
			alertContainer.heightAnchor.constraint(equalToConstant: 220)
		])
	}

	func configureTitleLabel() {
		alertContainer.addSubview(titleLabel)
		titleLabel.text = alertTitle ?? "Something went wrong"

		NSLayoutConstraint.activate([
			titleLabel.topAnchor.constraint(equalTo: alertContainer.topAnchor, constant: padding),
			titleLabel.leadingAnchor.constraint(equalTo: alertContainer.leadingAnchor, constant: padding),
			titleLabel.trailingAnchor.constraint(equalTo: alertContainer.trailingAnchor, constant: -padding),
			titleLabel.heightAnchor.constraint(equalToConstant: 28)
		])
	}

	func configureActionButton() {
		alertContainer.addSubview(actionButton)
		actionButton.setTitle(buttonTitle ?? "OK", for: .normal)
		actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)

		NSLayoutConstraint.activate([
			actionButton.bottomAnchor.constraint(equalTo: alertContainer.bottomAnchor, constant: -padding),
			actionButton.leadingAnchor.constraint(equalTo: alertContainer.leadingAnchor, constant: padding),
			actionButton.trailingAnchor.constraint(equalTo: alertContainer.trailingAnchor, constant: -padding),
			actionButton.heightAnchor.constraint(equalToConstant: 44)
		])
	}

	func configureMessageLabel() {
		alertContainer.addSubview(messageLabel)
		messageLabel.text = message ?? "Unable to complete request"
		messageLabel.numberOfLines = 4

		NSLayoutConstraint.activate([
			messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
			messageLabel.leadingAnchor.constraint(equalTo: alertContainer.leadingAnchor, constant: padding),
			messageLabel.trailingAnchor.constraint(equalTo: alertContainer.trailingAnchor, constant: -padding),
			messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
		])
	}

	@objc func dismissVC() {
		dismiss(animated: true)
	}
}
