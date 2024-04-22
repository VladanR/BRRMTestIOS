

import Foundation
struct Vehicles : Codable {
	let imageCount : ImageCount?
	let id : String?
	let catcherId : String?
	let createdAt : String?
	let updatedAt : String?
	let deletedAt : String?
	let userId : String?
	let vehicleId : String?
	let requestId : String?
	let user : UserV?
	let vehicleInfo : VehicleInfo?
	let requestInfo : String?
	let coverImage : String?

	enum CodingKeys: String, CodingKey {

		case imageCount = "imageCount"
		case id = "id"
		case catcherId = "catcherId"
		case createdAt = "createdAt"
		case updatedAt = "updatedAt"
		case deletedAt = "deletedAt"
		case userId = "userId"
		case vehicleId = "vehicleId"
		case requestId = "requestId"
		case user = "user"
		case vehicleInfo = "vehicleInfo"
		case requestInfo = "requestInfo"
		case coverImage = "coverImage"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		imageCount = try values.decodeIfPresent(ImageCount.self, forKey: .imageCount)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		catcherId = try values.decodeIfPresent(String.self, forKey: .catcherId)
		createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
		updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
		deletedAt = try values.decodeIfPresent(String.self, forKey: .deletedAt)
		userId = try values.decodeIfPresent(String.self, forKey: .userId)
		vehicleId = try values.decodeIfPresent(String.self, forKey: .vehicleId)
		requestId = try values.decodeIfPresent(String.self, forKey: .requestId)
		user = try values.decodeIfPresent(UserV.self, forKey: .user)
		vehicleInfo = try values.decodeIfPresent(VehicleInfo.self, forKey: .vehicleInfo)
		requestInfo = try values.decodeIfPresent(String.self, forKey: .requestInfo)
		coverImage = try values.decodeIfPresent(String.self, forKey: .coverImage)
	}

}
