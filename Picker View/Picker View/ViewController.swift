//
//  ViewController.swift
//  Picker View
//
//  Created by Panaswift Teachers on 29/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var pickerView: UIPickerView!
    
    var arr = ["Zia","Ali", "Maroof", "Kamal", "Daniyal", "Mohsin"]
    var age = ["20 Years","25 Years","30 Years","35 Years","40 Years"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
        self.pickerView.selectRow(3, inComponent: 0, animated: true)
        self.pickerView.selectRow(3, inComponent: 1, animated: true)
        
        println(self.pickerView.numberOfRowsInComponent(1))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 2
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0{
            return self.arr.count
        }else{
            return self.age.count
   
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        if component == 0{
            return self.arr[row]
        }else{
            return self.age[row]
            
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        if component == 0 {
            println(self.arr[row])
        }
        else {
            println(self.age[row])
        }
        
    }
    

}

