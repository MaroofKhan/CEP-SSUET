//
//  SecondController.swift
//  DemoMultiView
//
//  Created by Panaswift Teachers on 03/05/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class SecondController: UIViewController {

    var text : String?
    
    @IBOutlet var label : UILabel!
    
    var firstControllerDelegate : ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = self.text
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(){
        firstControllerDelegate?.onViewControllerListener("Welcome Back!!!")
        dismissViewControllerAnimated(true, completion:nil)
    }
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("prepareForSegue in second controller")
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    
    

}



protocol ViewControllerDelegate {
    
    func onViewControllerListener(data : String);
}








