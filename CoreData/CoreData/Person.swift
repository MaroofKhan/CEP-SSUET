//
//  Person.swift
//  CoreData
//
//  Created by Panaswift Teachers on 08/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import Foundation
import CoreData

class Person: NSManagedObject {

    @NSManaged var first: String
    @NSManaged var last: String
    @NSManaged var age: Int32

}
