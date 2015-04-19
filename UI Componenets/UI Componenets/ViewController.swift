//
//  ViewController.swift
//  UI Componenets
//
//  Created by Panaswift Teachers on 01/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "TEXT"
        label.textColor = UIColor.yellowColor()
        label.backgroundColor = UIColor.blackColor()
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        indicator.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentedControl(sender: AnyObject) {
        
        let segmentedControl = sender as UISegmentedControl
        println(segmentedControl.selectedSegmentIndex)
        indicator.stopAnimating()
        indicator.hidesWhenStopped = true
        
        
    }

    @IBAction func slider(sender: AnyObject) {
        
        let slider = sender as UISlider
        println(slider.value)
        
    }
    @IBAction func stepper(sender: AnyObject) {
        println("Stepper")
        let stepper = sender as UIStepper

    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        
    }

    
    
}

