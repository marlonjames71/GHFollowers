//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 12/30/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class GFTextField: UITextField {

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func configure() {
		translatesAutoresizingMaskIntoConstraints = false

		layer.cornerRadius = 10
		layer.cornerCurve = .continuous
		layer.borderWidth = 2
		layer.borderColor = UIColor.systemGray4.cgColor

		textColor = .label
		tintColor = .label
		textAlignment = .center
		font = UIFont.preferredFont(forTextStyle: .title2)
		adjustsFontSizeToFitWidth = true
		minimumFontSize = 12

		backgroundColor = .tertiarySystemBackground
		autocapitalizationType = .none
		autocorrectionType = .no
		returnKeyType = .go
		clearButtonMode = .whileEditing

		placeholder = "Enter a username"

	}

}
