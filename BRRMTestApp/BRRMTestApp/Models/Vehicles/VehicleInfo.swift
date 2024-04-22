

import Foundation
struct VehicleInfo : Codable {
	let completedProcessing : Int?
	let failedProcessing : Int?
	let isProcessing : Bool?
	let isProcessed : Bool?
	let processing : Int?
	let status : String?
	let importStatus : String?
	let isUploaded : Bool?
	let id : String?
	let vin : String?
	let make : String?
	let model : String?
	let displacement : String?
	let horsePower : String?
	let description : String?
	let bodyType : String?
	let fuelType : String?
	let count : Int?
	let visible : Bool?
	let features : [String]?
	let equipment : String?
	let cropType : String?
	let createdAt : String?
	let updatedAt : String?
	let deletedAt : String?
	let licensePlateId : String?
	let presetId : String?
	let vehicleBodyTypeId : String?
	let profileId : String?
	let vehicleTypeId : String?
	let geoLocation : String?
	let isImported : Bool?
	let areImagesImported : Bool?

	enum CodingKeys: String, CodingKey {

		case completedProcessing = "completedProcessing"
		case failedProcessing = "failedProcessing"
		case isProcessing = "isProcessing"
		case isProcessed = "isProcessed"
		case processing = "processing"
		case status = "status"
		case importStatus = "importStatus"
		case isUploaded = "isUploaded"
		case id = "id"
		case vin = "vin"
		case make = "make"
		case model = "model"
		case displacement = "displacement"
		case horsePower = "horsePower"
		case description = "description"
		case bodyType = "bodyType"
		case fuelType = "fuelType"
		case count = "count"
		case visible = "visible"
		case features = "features"
		case equipment = "equipment"
		case cropType = "cropType"
		case createdAt = "createdAt"
		case updatedAt = "updatedAt"
		case deletedAt = "deletedAt"
		case licensePlateId = "licensePlateId"
		case presetId = "presetId"
		case vehicleBodyTypeId = "vehicleBodyTypeId"
		case profileId = "profileId"
		case vehicleTypeId = "vehicleTypeId"
		case geoLocation = "geoLocation"
		case isImported = "isImported"
		case areImagesImported = "areImagesImported"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		completedProcessing = try values.decodeIfPresent(Int.self, forKey: .completedProcessing)
		failedProcessing = try values.decodeIfPresent(Int.self, forKey: .failedProcessing)
		isProcessing = try values.decodeIfPresent(Bool.self, forKey: .isProcessing)
		isProcessed = try values.decodeIfPresent(Bool.self, forKey: .isProcessed)
		processing = try values.decodeIfPresent(Int.self, forKey: .processing)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		importStatus = try values.decodeIfPresent(String.self, forKey: .importStatus)
		isUploaded = try values.decodeIfPresent(Bool.self, forKey: .isUploaded)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		vin = try values.decodeIfPresent(String.self, forKey: .vin)
		make = try values.decodeIfPresent(String.self, forKey: .make)
		model = try values.decodeIfPresent(String.self, forKey: .model)
		displacement = try values.decodeIfPresent(String.self, forKey: .displacement)
		horsePower = try values.decodeIfPresent(String.self, forKey: .horsePower)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		bodyType = try values.decodeIfPresent(String.self, forKey: .bodyType)
		fuelType = try values.decodeIfPresent(String.self, forKey: .fuelType)
		count = try values.decodeIfPresent(Int.self, forKey: .count)
		visible = try values.decodeIfPresent(Bool.self, forKey: .visible)
		features = try values.decodeIfPresent([String].self, forKey: .features)
		equipment = try values.decodeIfPresent(String.self, forKey: .equipment)
		cropType = try values.decodeIfPresent(String.self, forKey: .cropType)
		createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
		updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
		deletedAt = try values.decodeIfPresent(String.self, forKey: .deletedAt)
		licensePlateId = try values.decodeIfPresent(String.self, forKey: .licensePlateId)
		presetId = try values.decodeIfPresent(String.self, forKey: .presetId)
		vehicleBodyTypeId = try values.decodeIfPresent(String.self, forKey: .vehicleBodyTypeId)
		profileId = try values.decodeIfPresent(String.self, forKey: .profileId)
		vehicleTypeId = try values.decodeIfPresent(String.self, forKey: .vehicleTypeId)
		geoLocation = try values.decodeIfPresent(String.self, forKey: .geoLocation)
		isImported = try values.decodeIfPresent(Bool.self, forKey: .isImported)
		areImagesImported = try values.decodeIfPresent(Bool.self, forKey: .areImagesImported)
	}

}
