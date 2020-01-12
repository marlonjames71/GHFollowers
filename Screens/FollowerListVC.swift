//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 1/2/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

	var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .systemBackground
		navigationController?.isNavigationBarHidden = false
		navigationController?.navigationBar.prefersLargeTitles = true
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.setNavigationBarHidden(false, animated: true)
	}
}
