// Playground - noun: a place where people can play

import Cocoa




/* Polymorphism */

//class Vehicle {
//    var maxSpeed: Double
//    var currentSpeed = 0.0
//    var Make: String
//    
//    init (maxSpeed: Double, Make: String) {
//        self.maxSpeed = maxSpeed
//        self.Make = Make
//    }
//    
//    func makeNoise () {
//        
//    }
//}
//
//
//class Car: Vehicle {
//    
//    override func makeNoise() {
//        println("HONK!")
//    }
//    
//    /* Method overloading */
//    func accelerate () {
//        println("Accelerating!")
//    }
//    
//    func accelerate (Speed: Double) {
//        println("Accelerating at a speed of \(Speed)mph!")
//    }
//    /* ---- */
//    
//}
//
//
//class Ambulance: Vehicle {
//    
//    override func makeNoise() {
//        println("WAAAHHHHHHH!")
//    }
//    
//}

/* ---- */



/* Operator Overloading */ 
struct Vector {
    var x: Double
    var y: Double
    var z: Double

}

func + (vector1: Vector, vector2: Vector) -> Vector {
    var x = vector1.x + vector2.x
    var y = vector1.y + vector2.y
    var z = vector1.z + vector2.z
    
    var vector: Vector = Vector(x: x, y: y, z: z)
    return vector
}


func println (vector: Vector){
    println("x: \(vector.x)")
    println("y: \(vector.y)")
    println("z: \(vector.z)")
}

var v1: Vector = Vector(x: 5, y: 8, z: 5)
var v2: Vector = Vector(x: 9, y: 4, z: 2)

var sumVector = v1 + v2

var x = 1 + 2
println(x)
/* ---- */


println(sumVector)



/* --------- */



func isEqual<T: Equatable> (a: T, b: T) -> Bool {
    return a == b
}

func functionName <G> (a: G, b: G) {
    
}

println(isEqual(2, 2))

println(isEqual("ABC", "abc"))

println(isEqual("2", 2))

let string = "2"
let intVal = string.toInt()

println(intVal)



func + <T> (a: T, b: T) -> T {
    return a + b
}



let X = "ABC" + 2

println(X)




















