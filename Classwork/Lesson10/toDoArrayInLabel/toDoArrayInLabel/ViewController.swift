//
//  ViewController.swift
//  toDoArrayInLabel
//
//  Created by Ali Younis on 1/29/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    @IBOutlet weak var toDoItem: UITextField!
    
    var toDoListArray: [String] = []
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoListArray.append(toDoItem.text)
        
        toDoList.text = toDoList.text! + "\n" + " # " + toDoListArray.last!
        
        println("\(toDoListArray) \n")
        
    }
    
    @IBOutlet weak var toDoList: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      //  self.toDoList.layer.cornerRadius = 5
      //  self.toDoList.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

