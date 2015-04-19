//
//  ViewController.swift
//  Forcast
//
//  Created by Maroof Khan on 3/15/15.
//  Copyright (c) 2015 Maroof Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let base = "https://api.forecast.io/forecast/"
    private let apiKey = "2bc72b00819d678697b4ccda97c6a5cc"
    let latitude = "24.8600"
    let longitude = "67.0100"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let forecastURL = NSURL(string: "\(base)\(apiKey)/\(latitude),\(longitude)")
        
        /**
        let data = NSData.dataWithContentsOfURL(forecastURL, options: nil, error: nil)
        /** Alternative -->
            let data = NSData(forecastURL, options: nil, error: nil)
        */
        println(data)
        */
        
        
        let sharedSession = NSURLSession.sharedSession()
        let downloadtask = sharedSession.downloadTaskWithURL(forecastURL, completionHandler: { (location: NSURL!, response: NSURLResponse!, error: NSError!) in
            let data = NSData(contentsOfURL: location)
            let weatherDictionary = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as NSDictionary
            println(weatherDictionary["currently"])
        })
        
        downloadtask.resume()
        
    }


}

