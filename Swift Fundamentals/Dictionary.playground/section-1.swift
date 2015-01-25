// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


var myDictionary: [String:Int] = ["Furqan":101,
                    "Maroof":102,
                    "Raza":103]

println(myDictionary["Maroof"])

for (name, idNumber) in myDictionary {
    println("\(name) , \(idNumber)")
}

