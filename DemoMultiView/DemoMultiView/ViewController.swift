//
//  ViewController.swift
//  DemoMultiView
//
//  Created by Panaswift Teachers on 03/05/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit


class Temp {
    var name : String!
    
    init(){
      //  self.name = "Mohsin"
    }
    
    
    func doSomeThing(){
        println(self.name)
    }
    
    func printName(name: String!){
        println("\(name)")
    }
    
}




class ViewController: UIViewController, ViewControllerDelegate {

    @IBOutlet weak var firstContLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let temp = Temp()
        
        temp.doSomeThing()
        temp.printName(nil)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var dest = segue.destinationViewController as? SecondController
        
        dest?.text = "Hello Second Controller"
        dest?.firstControllerDelegate = self
    }
    
    func onViewControllerListener(data: String) {
        self.firstContLabel.text = data;
    }


}











