// Playground - noun: a place where people can play

import UIKit

func hello() {
    println("Hello world")
}

hello()

func sum(firstNum: Int, secondNum: Int) -> Int {
    let newSum = firstNum + secondNum
    return newSum

}

var x = sum(10, 20)
var y = sum(x, 15)


func fib(place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, finalResult = 0
    for index in 0..<fibNum {
        
        let tempVar = current
        
        current = next
        next = tempVar + current
        finalResult = tempVar
    }
    
    return finalResult
}

fib(9)
fib(23)
fib(30)

var q = 8
fib(10)

var num: Int? = 5
num!
if let numValue = num {
    println(numValue + 5)
}

func save(name: String) -> (first: String, last: String) {
    var lastName = "Konda"
    return (name, lastName)
}

save("Tedi").1
var myName = save("Tedi")
myName.first
myName.last
