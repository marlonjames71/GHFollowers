//
//  UIImage+Symbols.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 3/1/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

extension UIImage {

	enum Symbol: String {
		case hasLocation = "mappin.and.ellipse"
		case noLocation = "mappin.slash"
		case repos = "folder"
		case gists = "text.alignleft"
		case followers = "suit.heart"
		case following = "person.2"
	}


	convenience init(symbol: Symbol) {
		self.init(systemName: symbol.rawValue)!
	}
}
