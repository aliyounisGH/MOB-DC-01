// Playground - noun: a place where people can play

import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//background color is an object property
//UIColor purpleColor is a class method
view.backgroundColor = UIColor.purpleColor()

// Playground - noun: a place where people can play


class Animal {
    var name: String
    var legs: Int
    init(legs: Int, name: String) {
        self.legs = legs
        self.name = name
    }

    func speak() {
        println("AHHHHHH")
    }
}

class Dog: Animal {
    //var legs = 4

    var isSmart = true
    override func speak() {
        println("Woof!")
    }
}

var doggie = Dog(legs: 4, name: "Ena")
doggie.legs
doggie.speak()
doggie.isSmart
doggie.isSmart = false

//func printAnimalName(animal: Animal) {
//    println("Animal's name is \(animal.name)")
//}
//
//var doggie = Animal()
//doggie.name = "Ena"
//printAnimalName(doggie)

