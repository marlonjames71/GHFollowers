//
//  User.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 1/11/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import Foundation

struct User: Codable {
	var login: String
	var avatarUrl: String
	var location: String?
	var bio: String?
	var publicRepos: Int
	var publicGists: Int
	var htmlUrl: String
	var following: Int
	var followers: Int
	var createdAt: String
}
