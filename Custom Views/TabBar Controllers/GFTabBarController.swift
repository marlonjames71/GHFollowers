//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 3/1/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
		UITabBar.appearance().tintColor = .systemGreen
		self.viewControllers = [createSearchNC(), createFavoritesNC()]
    }


	func createSearchNC() -> UINavigationController {
		let searchVC = SearchVC()
		searchVC.title = "Search"
		searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

		return UINavigationController(rootViewController: searchVC)
	}


	func createFavoritesNC() -> UINavigationController {
		let favoritesVC = FavoritesListVC()
		favoritesVC.title = "Favorites"
		favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

		return UINavigationController(rootViewController: favoritesVC)
	}
}
