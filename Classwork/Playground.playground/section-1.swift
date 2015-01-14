// Playground - noun: a place where people can play

import UIKit


//defining a class requires we name the class with a capital letter
class Animal {
    var numberOfLegs: Int
    var hasFur = false
    var noise = "AAAAAAAH"
    
    init(legs: Int, hasFur: Bool) {
        self.numberOfLegs = legs
        self.hasFur = hasFur
    }
    
    func speak() {
        println(self.noise)
        
    }
}


//instantiating a new class (called an instance/object)
var tedi = Animal(legs: 2, hasFur: false)
tedi.speak()

println(tedi.numberOfLegs)

var ena = Animal(legs: 4, hasFur: true)
ena.hasFur = true
ena.numberOfLegs = 4
