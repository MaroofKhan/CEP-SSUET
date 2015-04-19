//
//  ViewController.swift
//  Gestures Temp
//
//  Created by Panaswift Teachers on 29/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewTap: UIView!
    
    @IBOutlet weak var viewSwap: UIView!
    
    @IBOutlet var rotaionGesture: UIRotationGestureRecognizer!
    
    var tapGesture = UITapGestureRecognizer()
    var swipeGesure = UISwipeGestureRecognizer()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewTap.addGestureRecognizer(self.tapGesture)
        
        self.tapGesture.addTarget(self, action: "tapFunc")
        
        self.viewTap.userInteractionEnabled = true
        
        // add gesture for swipe
        self.viewSwap.addGestureRecognizer(self.swipeGesure)
        
        self.swipeGesure.addTarget(self, action: "swipeFunc")
        
        self.viewSwap.userInteractionEnabled = true
        
        
        self.rotaionGesture.addTarget(self, action: "rotateFunc")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tapFunc(){
        println("Tap detected")
        
        let alert = UIAlertController(title: "alert", message: "Tap View Pressed", preferredStyle: UIAlertControllerStyle.Alert)
        
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(ok)
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        
    }
    
    func swipeFunc(){
        println("swipe detected")
        
        let alert = UIAlertController(title: "alert", message: "swipe View Pressed", preferredStyle: UIAlertControllerStyle.Alert)
        
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(ok)
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        
    }
    
    
    func rotateFunc(){
        println("rotate detected")
        
        let alert = UIAlertController(title: "Alert", message: "Rotate View Pressed", preferredStyle: UIAlertControllerStyle.Alert)
        
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(ok)
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

