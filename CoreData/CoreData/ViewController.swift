//
//  ViewController.swift
//  CoreData
//
//  Created by Panaswift Teachers on 08/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource {
    
    var context: NSManagedObjectContext? {
        get {
            let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
            let _context = appDelegate.managedObjectContext
            return _context
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var persons: [Person] = []
    var students: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: Save data
        let person = NSEntityDescription.entityForName("Person", inManagedObjectContext: context!)
        let daniyal = NSManagedObject(entity: person!, insertIntoManagedObjectContext: context!) as Person
        daniyal.first = "Daniyal"
        daniyal.last = "Raza"
        daniyal.age = 21
        
        let student = NSEntityDescription.entityForName("Student", inManagedObjectContext: context!)
        let studentDaniyal = NSManagedObject(entity: student!, insertIntoManagedObjectContext: context!) as Student
        studentDaniyal.person = daniyal
        studentDaniyal.courses = ["Automata", "Discrete Mathematics", "Data Structures", "Compiler Construction", "Simulation and Modeling", "Operation Research", "Business Communication"]
        studentDaniyal.rollNumber = 32201
        
        // MARK: Retrieve Data
        let request = NSFetchRequest(entityName: "Student")
        var error: NSError?
        let students = context!.executeFetchRequest(request, error: &error) as [Student]
        if let Error = error {
            println("\(Error.userInfo!)")
        
        } else {
            self.students = students
        
        }
        
        tableView.reloadData()
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let student = students[indexPath.row]
        cell.textLabel?.text = "\(student.person.first) \(student.person.last)"
        println(student.courses)
        return cell
    }


}

