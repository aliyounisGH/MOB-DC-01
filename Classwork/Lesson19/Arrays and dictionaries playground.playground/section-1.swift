// Playground - noun: a place where people can play

import UIKit

var testArray: [String] = ["ali", "hadi"]
testArray.count
testArray.append("younis")
testArray.capacity
testArray.endIndex
testArray.description
testArray.first!
testArray.getMirror()
testArray.insert("allawi", atIndex: 1)
testArray.removeLast()
testArray
testArray.removeAtIndex(1)
testArray
testArray.isEmpty
testArray.last!
testArray.reverse()
testArray.startIndex
testArray.removeAll(keepCapacity: true)
testArray.capacity

var test: [String] = []
test.insert("a", atIndex: 0)

test += ["b", "c", "d", "e"]
test[1] = "f"
test
test[1...4] = ["g", "h"]
test

for item in test {
    println(item)
}

var family = ["ali", "lilith", "hadi", "wisal", "khokha", "yaseen"]

for (index, name) in enumerate(family) {
    println("\(index + 1) : \(name)")
}

var random: String = "alihadi"