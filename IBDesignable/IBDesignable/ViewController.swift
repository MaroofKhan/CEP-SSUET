//
//  ViewController.swift
//  IBDesignable
//
//  Created by Panaswift Teachers on 12/04/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sampleView: IBDesignableClass!

    @IBAction func button(sender: AnyObject) {
        
        var scaleAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        scaleAnimation.values=[1,2]
        scaleAnimation.duration=10
        scaleAnimation.removedOnCompletion = false
        scaleAnimation.additive=false
       
        
        var rotateAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        rotateAnimation.values=[1,2]
        rotateAnimation.duration=5
        rotateAnimation.removedOnCompletion = false
        rotateAnimation.additive=true
        self.sampleView.layer.addAnimation(rotateAnimation, forKey: nil)
        
        
        
//        var GroupAnimati
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

