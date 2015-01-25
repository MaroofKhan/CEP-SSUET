// Playground - noun: a place where people can play

import Cocoa


class Dog {
    
    var Name:String
    var Breed:String
    var Age:Int
    
    init(Name:String, Breed:String, Age:Int) {
        self.Name = Name
        self.Breed = Breed
        self.Age = Age
    }
    
    func bark () {
        println("\(Name) is barking!")
    }
    
    func sit () {
        println("\(Name) is sitting!")
    }
    
    func getBreed() -> String {
        return Breed
    }

    func getName() -> String {
        return Name
    }
    
    func getAge () -> Int {
        return Age
    }
    
}









var a = 1.5
a

var ff = Int(a)
ff

var x = 5.0
var y = 2.0

x/y
x%y






















