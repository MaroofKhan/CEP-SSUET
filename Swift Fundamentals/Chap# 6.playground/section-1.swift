// Playground - noun: a place where people can play

import Cocoa
import Foundation

//
//func draw(Row:Int, Col:Int){
//    var i = 0
//    while i < Row {
//        var j = 0
//        while j < Col {
//            print("*")
//            j++
//        }
//        println()
//        i++
//    }
//}
//
//draw(5, 3)




//
//enum Days {
//    case Monday
//    case Tuesday
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//    case Sunday
//}
//
//var day:Days = .Wednesday
//
//switch day {
//case .Monday:
//    println("Today is Monday")
//case .Tuesday:
//    println("Today is Tuesday")
//case .Wednesday:
//    println("Today is Wednesday")
//case .Thursday:
//    println("Today is Thursday")
//case .Friday:
//    println("Today is Friday")
//default:
//    println("Some other day!")
//}
//
//enum Courses {
//    case iOS
//    case Android
//    case hybridApplications
//    case PHP
//}
//
//var course:Courses = .Android
//
//if course == Courses.iOS {
//    println("iOS")
//} else {
//    println("Something")
//}


class Vehicle {
    var numberOfTyres:Int
    var Color:String
    
    init (numberOfTyres:Int, Color:String) {
        self.numberOfTyres = numberOfTyres
        self.Color = Color
    }
    
    func properties(){
        println("Number of tyres: \(numberOfTyres) \nColor: \(Color)")
    }
}


var car:Vehicle = Vehicle(numberOfTyres: 4, Color: "Red")
car.properties()


var bike:Vehicle = Vehicle(numberOfTyres: 2, Color: "Black")
bike.properties()





