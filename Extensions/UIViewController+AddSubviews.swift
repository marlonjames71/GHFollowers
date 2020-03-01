//
//  UIViewController+AddSubviews.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 3/1/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

extension UIView {

	func addSubviews(_ views: UIView...) {
		views.forEach(addSubview)
	}
}
