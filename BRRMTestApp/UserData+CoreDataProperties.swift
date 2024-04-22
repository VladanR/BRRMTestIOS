//
//  UserData+CoreDataProperties.swift
//  BRRMTestApp
//
//  Created by Milos on 22.4.24..
//
//

import Foundation
import CoreData


extension UserData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserData> {
        return NSFetchRequest<UserData>(entityName: "UserData")
    }

    @NSManaged public var id: String?
    @NSManaged public var userName: String?
    @NSManaged public var token: String?

}

extension UserData : Identifiable {

}
