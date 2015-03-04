// Playground - noun: a place where people can play

import UIKit
import XCPlayground

// let asynchronous code run
XCPSetExecutionShouldContinueIndefinitely()

let url = NSURL(string: "http://alvhldjsfkhgkl.us")

let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
println(data)
println(response)
println(error)
})


task.resume()


