//
//  Follower.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 1/11/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
	let login: String
	let avatarUrl: String
}
