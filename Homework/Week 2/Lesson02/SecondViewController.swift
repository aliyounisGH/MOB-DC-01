//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    var result = 0
    
    func addNrs(#newNr:Int) -> Int {
        result = result + newNr
        return result
    }
    
    
    
    @IBAction func sumItUp(sender: AnyObject) {
     
        myResult.text = String(
            addNrs(newNr: myNrField.text.toInt()!)
        )
    }
    
    
    @IBOutlet weak var myNrField: UITextField!
    
    @IBOutlet weak var myResult: UILabel!
    
}
