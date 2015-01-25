// Playground - noun: a place where people can play

import UIKit

var x = "red pepper"

x.hasSuffix("pepper")
x.hasPrefix("pepper")
x.hasPrefix("red")


//let interestingNumbers = [
//    "Prime": [2, 3, 5, 7, 11, 13],
//    "Fibonacci": [1, 1, 2, 3, 5, 8],
//    "Square": [1, 4, 9, 16, 25],
//]
//
//for (kind, numbers) in interestingNumbers {
//    print("\(kind):")
//    for number in numbers {
//        print(" \(number),")
//    }
//    println()
//    
//}


//for i in 0..<4 {
//    println(i)
//}

func calculateStatistics(scores: [Int]) -> (min: Int, max: Double, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, Double(max), sum)
}


//var X = calculateStatistics([1,2,3,4])
//println(X.0)
//println(X.1)
//println(X.2)
//


func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
//println(sumOf(1, 2, 3, 4, 5))



func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
//println(increment(7))

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            println("True")
        } else {
            println("False")
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)




var perimeter: Double {
get {
    println("Get")
    return 3
}
set {
    println("Set")
    //sideLength = newValue / 3.0
}
}

perimeter = 3
println(perimeter)



enum TrafficLights {
    case Red
    case Yellow
    case Green
}


var light: TrafficLights = .Red
if light == .Red {
    println("The light is red!")
} else if light == .Yellow {
    println("Yellow!")
}

protocol random {
    //var x: Int
    func abc()
    func ABC()
}

class Random: random {
    //x = 0
    func abc() {
        println("ABC")
    }
    
    func ABC () {
        
    }
    
}


var intValue: Int?
intValue = 3
println(intValue!)

var array: [Double?] = [1.0,2.0,3.0,nil,5.0]

































