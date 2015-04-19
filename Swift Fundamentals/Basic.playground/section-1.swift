// Playground - noun: a place where people can play

import Cocoa

var intVal:Int = 0
var floatVal:Float = 1.1
var doubleVal:Double = 1.1
var charVal:Character = "A"
var stringVal:String = "Hi"
var boolVal: Bool = true

var div = 10.0/3.0
var Mod = 10.0%3.0


var random = 1
println(random++) //Post
println(random)
println(++random) //Pre




var marks = 95.5

//if marks >= 90 {
//    println("A")
//} else if marks >= 80 {
//    println("B")
//} else if marks >= 70 {
//    println("C")
//} else {
//    println("F")
//}

switch marks {
    case 90..<100:
        println("A")
    case 80:
        println("B")
    case 70:
        println("C")
    default:
        println("F")
}


var i = 0
while i++ < 4 {
    if i == 3 {
        continue
    }
    println(i)
}
println(i)

var j = 0
do {
    println(j)
} while j++ < 3


for var k = 3; k > 0; k-- {
    println(k)
}




var x = 10

println("number is \(x + 10)")









var a = 12
var b = "abc"
var z = b.toInt()
println(z)

if a == 1{
    println(a)
}

    
else if a > 2 {
    println(a)
}

else if a < 3 {
    println(a)
}



var pi = 3.142
var p:Int = Int(pi)




var o = 2

if o == 1 {
    println(o)
}

switch o {
case 1:
    println(o)
    println("something")
case 2:
    println("2")
default:
    println("default")
}













var abc = 0
while abc < 10{
    println(abc)
    abc++
}


for var abcd = 0; abcd < 10; i++ {
    println(abcd++)
}
