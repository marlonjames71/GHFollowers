//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 3/1/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {

	override func viewDidLoad() {
		super.viewDidLoad()
		configureItems()
	}


	private func configureItems() {
		itemInfoViewOne.set(itemInfoType: .repos, withCount: user.followers)
		itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.following)
		actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
	}
}
