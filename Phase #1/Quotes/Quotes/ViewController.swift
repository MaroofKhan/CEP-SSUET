//
//  ViewController.swift
//  Quotes
//
//  Created by Panaswift Teachers on 01/02/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var changeQuote: UIButton!
    
    let quotes = ["Don't ever doubt yourselves or waste a second of your life. It's too short, and you're too special. - Ariana Grande",
        "Be patient and understanding. Life is too short to be vengeful or malicious. - Phillips Brooks",
        "Life is short, and it is up to you to make it sweet. - Sarah Louise Delany",
        "We can only see a short distance ahead, but we can see plenty there that needs to be done. - Alan Turing",
        "I like the way you die boy! - Django."
    ]
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func btnChangeQuote(sender: AnyObject) {
        updateUI()
        
    }

    
    func updateUI () {
        let random = Int(rand())
        let index = random % quotes.count
        lblQuote.text = quotes[index]
        let color = randomColor()
        view.backgroundColor = color
        changeQuote.setTitleColor(color, forState: .Normal)
    }
    
    func randomColor () -> UIColor {
        let red = CGFloat(rand()) % 255
        let green = CGFloat(rand()) % 255
        let blue = CGFloat(rand()) % 255
        
        let color = UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
        
        return color
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

