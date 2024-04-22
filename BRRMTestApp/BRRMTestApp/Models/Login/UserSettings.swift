

import Foundation
struct UserSettings : Codable {
	let backgroundType : String?
	let blurAmount : Int?
	let defaultCropType : String?
	let features : [String]?
	let logoPosition : String?
	let qualityCheck : Bool?
	let showTutorials : Bool?
	let speechCommands : Bool?
	let lockCameraCapture : Bool?
	let defaultPreset : String?
	let updatedAt : String?
	let defaultBackground : String?
	let showVideoTutorial : Bool?

	enum CodingKeys: String, CodingKey {

		case backgroundType = "backgroundType"
		case blurAmount = "blurAmount"
		case defaultCropType = "defaultCropType"
		case features = "features"
		case logoPosition = "logoPosition"
		case qualityCheck = "qualityCheck"
		case showTutorials = "showTutorials"
		case speechCommands = "speechCommands"
		case lockCameraCapture = "lockCameraCapture"
		case defaultPreset = "defaultPreset"
		case updatedAt = "updatedAt"
		case defaultBackground = "defaultBackground"
		case showVideoTutorial = "showVideoTutorial"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		backgroundType = try values.decodeIfPresent(String.self, forKey: .backgroundType)
		blurAmount = try values.decodeIfPresent(Int.self, forKey: .blurAmount)
		defaultCropType = try values.decodeIfPresent(String.self, forKey: .defaultCropType)
		features = try values.decodeIfPresent([String].self, forKey: .features)
		logoPosition = try values.decodeIfPresent(String.self, forKey: .logoPosition)
		qualityCheck = try values.decodeIfPresent(Bool.self, forKey: .qualityCheck)
		showTutorials = try values.decodeIfPresent(Bool.self, forKey: .showTutorials)
		speechCommands = try values.decodeIfPresent(Bool.self, forKey: .speechCommands)
		lockCameraCapture = try values.decodeIfPresent(Bool.self, forKey: .lockCameraCapture)
		defaultPreset = try values.decodeIfPresent(String.self, forKey: .defaultPreset)
		updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
		defaultBackground = try values.decodeIfPresent(String.self, forKey: .defaultBackground)
		showVideoTutorial = try values.decodeIfPresent(Bool.self, forKey: .showVideoTutorial)
	}

}
