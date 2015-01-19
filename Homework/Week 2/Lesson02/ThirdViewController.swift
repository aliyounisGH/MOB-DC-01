//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    func evenOrOdd(#num:Int) ->String {
        if num % 2 == 0 {
            return "even"
        }
        else {
            return "odd"
        }
    }
    
    
    @IBAction func isThisEven(sender: AnyObject) {
        myResultEvenOrOddNr.text = evenOrOdd(num: myEvenOrOddNrField.text.toInt()!)
    }
    
    
    @IBOutlet weak var myEvenOrOddNrField: UITextField!
    
    
    @IBOutlet weak var myResultEvenOrOddNr: UILabel!
    
    
}
