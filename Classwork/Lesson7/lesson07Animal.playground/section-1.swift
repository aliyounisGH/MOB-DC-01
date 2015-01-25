// Playground - noun: a place where people can play

import UIKit

class Animal {
    var legs:Int = 4
    var fur:Bool = true
    var hasClaws: Bool
    
    init (hasClaws: Bool) {
        self.hasClaws = hasClaws
        self.legs = 4
    }
    
    func speak() {
        println("hello world")
        println("this animal has \(self.legs) legs")
    }

}

class Dog: Animal {
    
    override var fur: Bool {
        get {
            //return whatever the fur variable is set as
            return true
        }
        set {
            //override the inherited property to the new value set by the sub class
            super.fur = newValue
        }
    }
    
    override func speak() {
        //super method will add on top
        super.speak()
        println("woof woof")
    }
}

var tedi = Animal(hasClaws: true)

var ena = Dog(hasClaws: true)
ena.speak()
ena.fur
ena.legs


var skippy = ena
skippy.legs = 5

ena.legs

//has to have a value whether it's at the top or in the init
//the user is required to enter the value for a parameter only if it comes up inside the parens of the init
//the self.something is what i need to inside an init. It's like a gateway to the something var inside the class
//whenever i declare a variable and need to reference it again, then use "self"
//best practice is to init all declated properties/variables of classes
//you can also use "super" for init functions


struct Rectangle {
    var width: Int
    var height: Int
    
    func getArea() -> Int {
        return width * height
    }
    
}


let myRectangle = Rectangle(width: 50, height: 100)

var myOtherRectangle = myRectangle
myOtherRectangle.width = 70
myRectangle.width

myRectangle.getArea()

//polymorphesim

func doesAnimalHaveClaws (passingAnimal: Animal) -> Bool {
    return passingAnimal.hasClaws
}

let tedi = Animal(hasClaws: false)
doesAnimalHaveClaws(tedi)



