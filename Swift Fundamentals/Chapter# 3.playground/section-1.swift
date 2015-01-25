// Playground - noun: a place where people can play

import Cocoa


var apples = 0

if (apples > 0) {
    println("More than 0 apples are there!")
} else {
        println("There are 0 apples")
}


var citizen = false
var age = 17

var nic = true
var drivingLicense = false

if citizen == true {
    if drivingLicense == true {
        println("The person is a citizen and he has a driving license~")
    } else {
        println("The person is a citizen and he does not has a driving license~")
        
    }

} else {
    println("The person is not a citizen!")
}









// > Greater than
// < Less than
// == Equivalence
// >= Greater than or equals to
// <= Less than or equals to
// != Not is equals to

var x = 1

if !(x > 0) {
    println("Some thing!")
}



var testScore = 73

if testScore >= 90 {
    println("A")
} else if testScore >= 80{
    println("B")
} else if testScore >= 70 {
    println("C")
} else if testScore >= 60 {
    println("D")
} else {
    println("F")
}



//var tScore = 73
//
//switch (tScore){
//    case
//}

var grade = "a"

switch grade {
    case "A", "a":
    println("The score is >= 90")
    
    case "B":
    println("The score is >= 80")
    
    case "C":
    println("The score id >= 70")
    
default:
    println("The student is a failure!")
}


var counter = 0
while (counter < 10){
    println("Something!")
    counter++
}

var i = 0
for ; i <= 10 ; {
    print("The \(i)th iteration! ")
    i++
}


var y = 0
do {
    println(y)
    y++
} while (y < 10)




println()
println()
println()
println()
println()
println()
println()
println()


var ageOfTheChild = 19

if ageOfTheChild >= 1 && ageOfTheChild <= 11 {
    println("You're just a kid, enjoy childhood!")
} else if ageOfTheChild >= 12 && ageOfTheChild <= 19 {
    println("You'll never be a teenager again. Enjoy these years while they last!")
} else if ageOfTheChild >= 20 && ageOfTheChild <= 29 {
    println("Get the right education and experience!")
} else if ageOfTheChild >= 30 && ageOfTheChild <= 39 {
    println("You're just a kid, enjoy childhood!")
} else if ageOfTheChild >= 40 && ageOfTheChild <= 49 {
    println("You're just a kid, enjoy childhood!")
} else if ageOfTheChild >= 50 && ageOfTheChild <= 59 {
    println("You're just a kid, enjoy childhood!")
} else {
    println("You're just a kid, enjoy childhood!")
}













