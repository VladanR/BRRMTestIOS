

import Foundation
struct User : Codable {
	let legacyPayment : Bool?
	let credit : Credit?
	let id : String?
	let email : String?
	let name : String?
	let password : String?
	let status : String?
	let token : String?
	let phone : String?
	let lastTimeOnline : String?
	let address : String?
	let maxCount : Int?
	let qcEnabled : Bool?
	let manualQcEnabled : Bool?
	let licensePlateEnabled : Bool?
	let reflectiveFloorEnabled : Bool?
	let vinScannerEnabled : Bool?
	let exposureFilterEnabled : Bool?
	let legacyShadow : Bool?
	let shadowType : String?
	let readOnlyPermissions : Bool?
	let priority : String?
	let interiorBackgroundEnabled : Bool?
	let removeReflectionsEnabled : Bool?
	let deactiveAccountEnabled : Bool?
	let markersEnabled : Bool?
	let additionalInvoiceInfo : String?
	let createdAt : String?
	let updatedAt : String?
	let deletedAt : String?
	let clientId : String?
	let customerId : String?
	let roleId : String?
	let profilePictureId : String?
	let profilePicture : String?
	let customer : Customer?
	let client : Client?
	let role : Role?
	let userSettingsMode : String?
	let userSettings : UserSettings?
	let notSeenNotifications : Int?

	enum CodingKeys: String, CodingKey {

		case legacyPayment = "legacyPayment"
		case credit = "credit"
		case id = "id"
		case email = "email"
		case name = "name"
		case password = "password"
		case status = "status"
		case token = "token"
		case phone = "phone"
		case lastTimeOnline = "lastTimeOnline"
		case address = "address"
		case maxCount = "maxCount"
		case qcEnabled = "qcEnabled"
		case manualQcEnabled = "manualQcEnabled"
		case licensePlateEnabled = "licensePlateEnabled"
		case reflectiveFloorEnabled = "reflectiveFloorEnabled"
		case vinScannerEnabled = "vinScannerEnabled"
		case exposureFilterEnabled = "exposureFilterEnabled"
		case legacyShadow = "legacyShadow"
		case shadowType = "shadowType"
		case readOnlyPermissions = "readOnlyPermissions"
		case priority = "priority"
		case interiorBackgroundEnabled = "interiorBackgroundEnabled"
		case removeReflectionsEnabled = "removeReflectionsEnabled"
		case deactiveAccountEnabled = "deactiveAccountEnabled"
		case markersEnabled = "markersEnabled"
		case additionalInvoiceInfo = "additionalInvoiceInfo"
		case createdAt = "createdAt"
		case updatedAt = "updatedAt"
		case deletedAt = "deletedAt"
		case clientId = "clientId"
		case customerId = "customerId"
		case roleId = "roleId"
		case profilePictureId = "profilePictureId"
		case profilePicture = "profilePicture"
		case customer = "customer"
		case client = "client"
		case role = "role"
		case userSettingsMode = "userSettingsMode"
		case userSettings = "userSettings"
		case notSeenNotifications = "notSeenNotifications"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		legacyPayment = try values.decodeIfPresent(Bool.self, forKey: .legacyPayment)
		credit = try values.decodeIfPresent(Credit.self, forKey: .credit)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		password = try values.decodeIfPresent(String.self, forKey: .password)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		token = try values.decodeIfPresent(String.self, forKey: .token)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
		lastTimeOnline = try values.decodeIfPresent(String.self, forKey: .lastTimeOnline)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		maxCount = try values.decodeIfPresent(Int.self, forKey: .maxCount)
		qcEnabled = try values.decodeIfPresent(Bool.self, forKey: .qcEnabled)
		manualQcEnabled = try values.decodeIfPresent(Bool.self, forKey: .manualQcEnabled)
		licensePlateEnabled = try values.decodeIfPresent(Bool.self, forKey: .licensePlateEnabled)
		reflectiveFloorEnabled = try values.decodeIfPresent(Bool.self, forKey: .reflectiveFloorEnabled)
		vinScannerEnabled = try values.decodeIfPresent(Bool.self, forKey: .vinScannerEnabled)
		exposureFilterEnabled = try values.decodeIfPresent(Bool.self, forKey: .exposureFilterEnabled)
		legacyShadow = try values.decodeIfPresent(Bool.self, forKey: .legacyShadow)
		shadowType = try values.decodeIfPresent(String.self, forKey: .shadowType)
		readOnlyPermissions = try values.decodeIfPresent(Bool.self, forKey: .readOnlyPermissions)
		priority = try values.decodeIfPresent(String.self, forKey: .priority)
		interiorBackgroundEnabled = try values.decodeIfPresent(Bool.self, forKey: .interiorBackgroundEnabled)
		removeReflectionsEnabled = try values.decodeIfPresent(Bool.self, forKey: .removeReflectionsEnabled)
		deactiveAccountEnabled = try values.decodeIfPresent(Bool.self, forKey: .deactiveAccountEnabled)
		markersEnabled = try values.decodeIfPresent(Bool.self, forKey: .markersEnabled)
		additionalInvoiceInfo = try values.decodeIfPresent(String.self, forKey: .additionalInvoiceInfo)
		createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
		updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
		deletedAt = try values.decodeIfPresent(String.self, forKey: .deletedAt)
		clientId = try values.decodeIfPresent(String.self, forKey: .clientId)
		customerId = try values.decodeIfPresent(String.self, forKey: .customerId)
		roleId = try values.decodeIfPresent(String.self, forKey: .roleId)
		profilePictureId = try values.decodeIfPresent(String.self, forKey: .profilePictureId)
		profilePicture = try values.decodeIfPresent(String.self, forKey: .profilePicture)
		customer = try values.decodeIfPresent(Customer.self, forKey: .customer)
		client = try values.decodeIfPresent(Client.self, forKey: .client)
		role = try values.decodeIfPresent(Role.self, forKey: .role)
		userSettingsMode = try values.decodeIfPresent(String.self, forKey: .userSettingsMode)
		userSettings = try values.decodeIfPresent(UserSettings.self, forKey: .userSettings)
		notSeenNotifications = try values.decodeIfPresent(Int.self, forKey: .notSeenNotifications)
	}

}
