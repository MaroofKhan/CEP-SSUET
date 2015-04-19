//
//  ViewController.swift
//  FireBaseTemp
//
//  Created by Panaswift Teachers on 12/04/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//


//GUIDE: https://www.firebase.com/docs/ios/guide/

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var lbl: UILabel!

    let baseRef = Firebase(url: "https://tempfbapp.firebaseio.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.baseRef.setValue(["Name":"Ali"])
//        self.baseRef.updateChildValues(["Name":"Mohsin"])
//        let dataRef = self.baseRef.childByAppendingPath("data")
//        dataRef.updateChildValues(["age": 24])
//        let autoRef = self.baseRef.childByAutoId()
//        
//        autoRef.updateChildValues(["City":"Karachi"])

        
        self.baseRef.observeEventType(FEventType.Value, withBlock: { (fdata) -> Void in
            println(fdata)
            let data = fdata.value["Name"] as? String
            
            if data != nil {
                self.lbl.text = data
                
            }
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func saveTxt(sender: UITextField) {
        
        

    }

    
    
    @IBAction func save(sender: AnyObject) {
        
        println(self.txt.text)
        
        if self.txt.text != nil {
            self.baseRef.updateChildValues(["Text Field": self.txt.text!])
            
        }
    }
    
}

