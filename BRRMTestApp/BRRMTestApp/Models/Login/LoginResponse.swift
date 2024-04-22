

import Foundation

struct LoginResponse : Codable {
	let token : String?
    let user : User?
	let userFiles : [String]?

	enum CodingKeys: String, CodingKey {

		case token = "token"
		case user = "user"
		case userFiles = "userFiles"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		token = try values.decodeIfPresent(String.self, forKey: .token)
		user = try values.decodeIfPresent(User.self, forKey: .user)
		userFiles = try values.decodeIfPresent([String].self, forKey: .userFiles)
	}

}
