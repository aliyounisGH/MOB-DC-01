//
//  File.swift
//  Lesson02
//
//  Created by Ali Younis on 1/18/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class FibonacciAdder {
    
        var current = 0, next = 1, result = 0
    
        func fib(#fibNum:Int) -> Int {
    
            for index in 1..<fibNum {
            var temp = current
            result = current + next
            current = next
            next = result
            }
            return result
        
            }
    
    
}
