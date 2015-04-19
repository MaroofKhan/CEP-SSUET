//
//  Student.swift
//  CoreData
//
//  Created by Panaswift Teachers on 08/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import Foundation
import CoreData

class Student: NSManagedObject {

    @NSManaged var rollNumber: Int32
    @NSManaged private var courses_: AnyObject
    @NSManaged var person: Person
    
    var courses: [String] {
        get {
            let _courses = courses_ as? [String]
            return _courses!
        } set {
            let _courses = newValue as AnyObject
            courses_ = _courses
        }
    }

}
