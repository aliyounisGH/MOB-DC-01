// Playground - noun: a place where people can play

import UIKit

var wayneGretzgy = ["first_name" : "Wayne", "last_name" : "Gretzgy", "team" : "Capitals"]

wayneGretzgy["first_name"]

if let wayneName = wayneGretzgy["first_name"] {
    println(wayneName)
}

var ena: [String: Int] = [:]

// set values in dictionary

ena["legs"] = 4

ena["eyes"] = 2

ena["eyes"] = 3

//remove value from dictionary by setting it to nil
ena["eyes"] = nil
ena.removeValueForKey("eyes")

//ena

ena["paws"] = 4


for (key, value) in ena {
    println("Ena has \(value) \(key)")
}

for enaKey in ena.keys {
    println(enaKey)
}

for enaValue in ena.values {
    println(enaValue)
}

var articles = [

    ["title": "ena breaks tail", "date": "02/23/15", "author": "tedi"],
    ["title": "MAD", "date": "02/25/15", "author": "arthur"]

]

articles[1]["title"]!

for article in articles {
    println(article["title"]!)
}