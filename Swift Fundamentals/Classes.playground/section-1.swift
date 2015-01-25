// Playground - noun: a place where people can play

import Cocoa



class Car {
    var Color: String = "Red"
    var doors: Int = 4
    var model: String = "2014"
    var maxSpeed: Int = 120
    
    //Initializer - To give initial values to the properties
    
    init (color: String, doors: Int, model: String, maxSpeed:Int) {
        
        Color = color
        self.doors = doors
        self.model = model
        self.maxSpeed = maxSpeed
        
    }
    
    
    func speedUp(){

    }
    
    func speedDown(){
        
    }
    
    func turn() {
        
    }
    
}




class Dog {
    var Name: String
    var Breed: String
    var Age: Int
    
    // Initializer
    init(Name: String, Breed: String, Age:Int) {
        self.Name = Name
        self.Breed = Breed
        self.Age = Age
    
    }
    
    func sit() {
        println("\(Name) is sitting.")
        
    }
    
    func bark() {
        println("\(Name) is barking.")
        println("Woof! Woof!")
        
    }
    
    func run() {
        println("\(Name) is running.")
        
    }
    
    func getName() -> String {
        return Name
    
    }
    
    func getBreed() -> String {
        return Breed
    
    }
    
    func getAge() -> Int {
        return Age
    
    }
    
}


class PakistaniDog: Dog {
    var color: String
    
    
    init(Name: String, Breed: String, Age: Int, color: String) {
        
            self.color = color
            super.init(Name: Name, Breed: Breed, Age: Age)
        

        
    }
    
    func eatChapati () {
        println("\(self.Name) is eating chapati!")
    }
}


var shero = Dog(Name: "Shero",
                Breed: "Husky",
                Age: 3)

var puddle = Dog(Name: "Puddle",
                Breed: "KuchBhi",
                Age: 4)


var aDog = PakistaniDog(Name: "Bunto", Breed: "Pakistani", Age: 3, color: "Brown")
aDog.eatChapati()














