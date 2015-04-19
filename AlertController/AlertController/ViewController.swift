//
//  ViewController.swift
//  AlertController
//
//  Created by Panaswift Teachers on 08/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed () {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { _ in
            println("Action pressed")
        })
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Destructive, handler: { _ in
            println("Action pressed")
        })
        let cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: { _ in
            println("Action pressed")
        })
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: {
            println("Presented")
        })
        
        
    }


}

