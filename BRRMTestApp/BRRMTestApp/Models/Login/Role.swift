

import Foundation
struct Role : Codable {
	let id : String?
	let name : String?
	let type : String?
	let createdAt : String?
	let updatedAt : String?
	let deletedAt : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case name = "name"
		case type = "type"
		case createdAt = "createdAt"
		case updatedAt = "updatedAt"
		case deletedAt = "deletedAt"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
		updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
		deletedAt = try values.decodeIfPresent(String.self, forKey: .deletedAt)
	}

}
