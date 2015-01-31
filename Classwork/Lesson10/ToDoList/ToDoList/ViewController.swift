//
//  ViewController.swift
//  ToDoList
//
//  Created by Ali Younis on 1/28/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var arrayItems: UILabel!
    
    
    
    @IBAction func addText(sender: AnyObject) {
        
        toDoList.append(textField.text)
        println(toDoList)
       // println("\n")
        
    }
    
    
    var toDoList: [String] = ["a", "b", "c", "d", "e"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoList.append("f")
        
        for i in toDoList {
            println(i)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

