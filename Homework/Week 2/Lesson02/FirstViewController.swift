//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    */
    
    func helloWorld() -> String {
    return "Hello World!"
    }
    
    @IBAction func helloWorld(sender: AnyObject) {
        myOneLabel.text = helloWorld() + "\n" + "Hello " + myNameTextField.text + ".\n" + "You are " + myAgeTextField.text + " years old.\n" + agePermissions() + "\n" + ageActions()
    }
    
    
    @IBOutlet weak var myOneLabel: UILabel!
    
    /*
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    */
    
    @IBOutlet weak var myNameTextField: UITextField!
    
    @IBOutlet weak var myAgeTextField: UITextField!
    
    
    /*
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    */
    
  //  let age = (myAgeTextField.text).toInt()!
    
    func agePermissions() ->String {
        
       let age = (myAgeTextField.text).toInt()!
        
        if age >= 21 {
            return "Drink."
        }
        else if age >= 18 {
            return "Vote."
        }
        else if age >= 16 {
            return "Drive."
        }
        else {
            return "Nothing."
        }
        
    }
    
    
    /*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    
    func ageActions() ->String {
        
        let age = (myAgeTextField.text).toInt()!
        
        if age >= 21 {
            return "U drink, drive & vote."
        }
        else if age >= 18 && age < 21 {
            return "U vote & drive."
        }
        else if age >= 16 && age < 18 {
            return "U drive."
        }
        else {
            return "Nada."
        }
        
    }
    
    
}
