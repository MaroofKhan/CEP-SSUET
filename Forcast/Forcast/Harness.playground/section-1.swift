// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



let base = "https://api.forecast.io/forecast/"
private let apiKey = "2bc72b00819d678697b4ccda97c6a5cc"
let latitude = "24.8600"
let longitude = "67.0100"
let forecastURL = NSURL(string: "\(base)\(apiKey)/\(latitude),\(longitude)")


//http://jsonformatter.curiousconcept.com/