// Playground - noun: a place where people can play

import UIKit

class MyCLass {
    var a: Int = 0
    var b: String = ""
    
    func abc () {
        
    }
}



extension MyCLass {
    func xyz () {
        
    }
}


var x = MyCLass ()
x.xyz()



var I: Int = 3

extension Int {
    func  isPrime () -> Bool {
        return false
    }
}

I.isPrime()




protocol MyProtocol {
    func ABC () -> String
    func XYZ ()
}

class Class: MyProtocol {
    func ABC () -> String {
        return ""
    }
    
    func XYZ() {
        
    }
}

//extension MyCLass: MyProtocol {
//    func ABC () {
//        
//    }
//}

//var v: Int
var V: Int {
get {
    println("GET")
   return 0
}
set {
    
    println("SET: \(newValue)")
    
}
}

var X = V
V = 3






var sideLength: Int = 3

var area: Int {
get {
    return sideLength * sideLength
}

}

println(area)












