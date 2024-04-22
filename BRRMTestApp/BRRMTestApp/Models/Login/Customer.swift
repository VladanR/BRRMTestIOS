

import Foundation
struct Customer : Codable {
	let credits : Int?
	let id : String?
	let name : String?
	let status : String?
	let phone : String?
	let address : String?
	let allowChilds : Bool?
	let supportEmails : [String]?
	let infoEmail : String?
	let allowNegativeCredits : Bool?
	let shadowType : String?
	let duplicateVehicleEnabled : Bool?
	let removeReflectionsEnabled : Bool?
	let markersEnabled : Bool?
	let panoramaEnabled : Bool?
	let automaticVinDecodeEnabled : Bool?
	let geoLocationEnabled : Bool?
	let createGifEnabled : Bool?
	let guidelineLink : String?
	let isNotify : Bool?
	let deactiveAccountEnabled : Bool?
	let interiorBackgroundEnabled : Bool?
	let createdAt : String?
	let updatedAt : String?
	let deletedAt : String?
	let parentId : String?
	let logoId : String?
	let storageCredentialsId : String?
	let logo : String?

	enum CodingKeys: String, CodingKey {

		case credits = "credits"
		case id = "id"
		case name = "name"
		case status = "status"
		case phone = "phone"
		case address = "address"
		case allowChilds = "allowChilds"
		case supportEmails = "supportEmails"
		case infoEmail = "infoEmail"
		case allowNegativeCredits = "allowNegativeCredits"
		case shadowType = "shadowType"
		case duplicateVehicleEnabled = "duplicateVehicleEnabled"
		case removeReflectionsEnabled = "removeReflectionsEnabled"
		case markersEnabled = "markersEnabled"
		case panoramaEnabled = "panoramaEnabled"
		case automaticVinDecodeEnabled = "automaticVinDecodeEnabled"
		case geoLocationEnabled = "geoLocationEnabled"
		case createGifEnabled = "createGifEnabled"
		case guidelineLink = "guidelineLink"
		case isNotify = "isNotify"
		case deactiveAccountEnabled = "deactiveAccountEnabled"
		case interiorBackgroundEnabled = "interiorBackgroundEnabled"
		case createdAt = "createdAt"
		case updatedAt = "updatedAt"
		case deletedAt = "deletedAt"
		case parentId = "parentId"
		case logoId = "logoId"
		case storageCredentialsId = "storageCredentialsId"
		case logo = "logo"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		credits = try values.decodeIfPresent(Int.self, forKey: .credits)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		allowChilds = try values.decodeIfPresent(Bool.self, forKey: .allowChilds)
		supportEmails = try values.decodeIfPresent([String].self, forKey: .supportEmails)
		infoEmail = try values.decodeIfPresent(String.self, forKey: .infoEmail)
		allowNegativeCredits = try values.decodeIfPresent(Bool.self, forKey: .allowNegativeCredits)
		shadowType = try values.decodeIfPresent(String.self, forKey: .shadowType)
		duplicateVehicleEnabled = try values.decodeIfPresent(Bool.self, forKey: .duplicateVehicleEnabled)
		removeReflectionsEnabled = try values.decodeIfPresent(Bool.self, forKey: .removeReflectionsEnabled)
		markersEnabled = try values.decodeIfPresent(Bool.self, forKey: .markersEnabled)
		panoramaEnabled = try values.decodeIfPresent(Bool.self, forKey: .panoramaEnabled)
		automaticVinDecodeEnabled = try values.decodeIfPresent(Bool.self, forKey: .automaticVinDecodeEnabled)
		geoLocationEnabled = try values.decodeIfPresent(Bool.self, forKey: .geoLocationEnabled)
		createGifEnabled = try values.decodeIfPresent(Bool.self, forKey: .createGifEnabled)
		guidelineLink = try values.decodeIfPresent(String.self, forKey: .guidelineLink)
		isNotify = try values.decodeIfPresent(Bool.self, forKey: .isNotify)
		deactiveAccountEnabled = try values.decodeIfPresent(Bool.self, forKey: .deactiveAccountEnabled)
		interiorBackgroundEnabled = try values.decodeIfPresent(Bool.self, forKey: .interiorBackgroundEnabled)
		createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
		updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
		deletedAt = try values.decodeIfPresent(String.self, forKey: .deletedAt)
		parentId = try values.decodeIfPresent(String.self, forKey: .parentId)
		logoId = try values.decodeIfPresent(String.self, forKey: .logoId)
		storageCredentialsId = try values.decodeIfPresent(String.self, forKey: .storageCredentialsId)
		logo = try values.decodeIfPresent(String.self, forKey: .logo)
	}

}
