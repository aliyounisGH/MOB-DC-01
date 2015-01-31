// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10, 15, 20]

var secondArray: [Int] = []

var stringArray: [String] = []

myArray[2]

myArray.first
myArray.last!

//first and last are optional properties by default as it is possible that nothing is in the array

secondArray.append(20)

myArray.insert(100, atIndex: 2)

//append adds it to the end of the array .. insert add it at that specific index

myArray.insert(50, atIndex: myArray.count - 1)

myArray.isEmpty

stringArray.isEmpty

myArray[1] = 40

myArray.removeAtIndex(2)

for i in myArray {
    println("the value is \(i)")
}

for q in myArray {
    if q == 100 {
        println("bingo")
    }
    else {
        println("the value is \(q)")
    }

}


