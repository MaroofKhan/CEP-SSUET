// Playground - noun: a place where people can play

import Cocoa

func eating (ABC:() -> String) {
    println(ABC())
}

func eatingNihari (number:Int) -> String
{
    return "Eating Nihari! \(number) plates!"
}








func eatBiryani (number:Int) -> String {
    return "Eating \(number) plate(s) Biryani!"
}

func eating () -> ((Int) -> String) {
    return eatBiryani
}

var Eating = eating()
println(Eating(2))









let x:Double = 9

x

println(x)


var intVal:Int = 0
var floatVal:Float = 1.1
var doubleVal:Double = 1.1
var charVal:Character = "A"
var stringVal:String = "Hi"
var boolVal: Bool = true


var XYZ = 10%3











