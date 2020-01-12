//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Marlon Raskin on 1/11/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import Foundation

class NetworkManager {
	static let shared = NetworkManager()
	let baseURL = "https://api.github.com/users/"
	let pageAmount: Int = 100

	let jsonDecoder: JSONDecoder = {
		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		return decoder
	}()

	private init() {}

	func getFollowers(for username: String, page: Int, completion: @escaping (Result<[Follower], GFError>) -> Void) {
		let endPoint = baseURL + "\(username)/followers?per_page=\(String(pageAmount))&page=\(page)"

		guard let url = URL(string: endPoint) else {
			completion(.failure(.invalidUsername))
			return
		}

		let task = URLSession.shared.dataTask(with: url) { data, response, error in
			if let _ = error {
				completion(.failure(.unableToComplete))
				return
			}

			guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
				completion(.failure(.invalidResponse))
				return
			}

			guard let data = data else {
				completion(.failure(.invalidData))
				return
			}

			do {
				let followers = try self.jsonDecoder.decode([Follower].self, from: data)
				completion(.success(followers))
			} catch {
				completion(.failure(.invalidData))
			}
		}
		task.resume()
	}
}
