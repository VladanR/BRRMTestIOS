//
//  VehiclesData+CoreDataProperties.swift
//  BRRMTestApp
//
//  Created by Milos on 22.4.24..
//
//

import Foundation
import CoreData


extension VehiclesData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VehiclesData> {
        return NSFetchRequest<VehiclesData>(entityName: "VehiclesData")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var imageURL: String?

}

extension VehiclesData : Identifiable {

}
