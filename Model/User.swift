//
//  User.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 1/11/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import Foundation

struct User: Codable {
	let login: String
	let avatarUrl: String
	var location: String?
	var bio: String?
	let publicRepos: Int
	let publicGists: Int
	let htmlUrl: String
	let following: Int
	let followers: Int
	let createdAt: String
}
