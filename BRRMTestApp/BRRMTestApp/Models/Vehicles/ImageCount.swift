

import Foundation
struct ImageCount : Codable {
	let total : Int?

	enum CodingKeys: String, CodingKey {

		case total = "total"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		total = try values.decodeIfPresent(Int.self, forKey: .total)
	}

}
