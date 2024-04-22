

import Foundation
struct Client : Codable {
	let credits : Int?
	let id : String?
	let name : String?
	let status : String?
	let description : String?
	let icon : String?
	let email : String?
	let country : String?
	let postCode : String?
	let city : String?
	let address : String?
	let notes : String?
	let paymentType : String?
	let priority : String?
	let outputImageResolution : String?
	let interiorBackgroundEnabled : Bool?
	let shadowType : String?
	let duplicateVehicleEnabled : Bool?
	let numberId : String?
	let removeReflectionsEnabled : Bool?
	let deactiveAccountEnabled : Bool?
	let markersEnabled : Bool?
	let postponedInvoiceEnabled : Bool?
	let customInvoiceConfig : String?
	let createdAt : String?
	let updatedAt : String?
	let deletedAt : String?
	let customerId : String?
	let logoId : String?
	let logo : String?

	enum CodingKeys: String, CodingKey {

		case credits = "credits"
		case id = "id"
		case name = "name"
		case status = "status"
		case description = "description"
		case icon = "icon"
		case email = "email"
		case country = "country"
		case postCode = "postCode"
		case city = "city"
		case address = "address"
		case notes = "notes"
		case paymentType = "paymentType"
		case priority = "priority"
		case outputImageResolution = "outputImageResolution"
		case interiorBackgroundEnabled = "interiorBackgroundEnabled"
		case shadowType = "shadowType"
		case duplicateVehicleEnabled = "duplicateVehicleEnabled"
		case numberId = "numberId"
		case removeReflectionsEnabled = "removeReflectionsEnabled"
		case deactiveAccountEnabled = "deactiveAccountEnabled"
		case markersEnabled = "markersEnabled"
		case postponedInvoiceEnabled = "postponedInvoiceEnabled"
		case customInvoiceConfig = "customInvoiceConfig"
		case createdAt = "createdAt"
		case updatedAt = "updatedAt"
		case deletedAt = "deletedAt"
		case customerId = "customerId"
		case logoId = "logoId"
		case logo = "logo"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		credits = try values.decodeIfPresent(Int.self, forKey: .credits)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		icon = try values.decodeIfPresent(String.self, forKey: .icon)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		country = try values.decodeIfPresent(String.self, forKey: .country)
		postCode = try values.decodeIfPresent(String.self, forKey: .postCode)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		notes = try values.decodeIfPresent(String.self, forKey: .notes)
		paymentType = try values.decodeIfPresent(String.self, forKey: .paymentType)
		priority = try values.decodeIfPresent(String.self, forKey: .priority)
		outputImageResolution = try values.decodeIfPresent(String.self, forKey: .outputImageResolution)
		interiorBackgroundEnabled = try values.decodeIfPresent(Bool.self, forKey: .interiorBackgroundEnabled)
		shadowType = try values.decodeIfPresent(String.self, forKey: .shadowType)
		duplicateVehicleEnabled = try values.decodeIfPresent(Bool.self, forKey: .duplicateVehicleEnabled)
		numberId = try values.decodeIfPresent(String.self, forKey: .numberId)
		removeReflectionsEnabled = try values.decodeIfPresent(Bool.self, forKey: .removeReflectionsEnabled)
		deactiveAccountEnabled = try values.decodeIfPresent(Bool.self, forKey: .deactiveAccountEnabled)
		markersEnabled = try values.decodeIfPresent(Bool.self, forKey: .markersEnabled)
		postponedInvoiceEnabled = try values.decodeIfPresent(Bool.self, forKey: .postponedInvoiceEnabled)
		customInvoiceConfig = try values.decodeIfPresent(String.self, forKey: .customInvoiceConfig)
		createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
		updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
		deletedAt = try values.decodeIfPresent(String.self, forKey: .deletedAt)
		customerId = try values.decodeIfPresent(String.self, forKey: .customerId)
		logoId = try values.decodeIfPresent(String.self, forKey: .logoId)
		logo = try values.decodeIfPresent(String.self, forKey: .logo)
	}

}
