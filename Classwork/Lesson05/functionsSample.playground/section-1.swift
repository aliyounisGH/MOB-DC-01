// Playground - noun: a place where people can play

import UIKit

//hello

func hello() {
    println("Hello world")
}

hello()


//simple addition

func sum(firstNum: Int, secondNum: Int) -> Int {
    let newSum = firstNum + secondNum
    return newSum
}

var x = sum(10, 20)
var y = sum(x, 15)


//fibonacci

func fib(place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
    for index in 0..<fibNum {

        let tempVar = current

        current = next
        next = tempVar + current
        result = tempVar
    }
    
    return result
}

fib(5)


//optionals

var num: Int? = 5
num!

if let numValue = num {
    println(numValue + 5)
}



func save(name: String) -> (first: String, last: String) {
    var lastName = "Konda"
    return (name, lastName)
}

var myName = save("Tedi")
myName.first
myName.last

//the variable is an array (or whatever you call that) and you can call individual values of that array by their index value. The first value has an index "0"
//so the above can be written as:
//myName.0
//myName.1








