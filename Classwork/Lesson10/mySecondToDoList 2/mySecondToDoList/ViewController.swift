//
//  ViewController.swift
//  mySecondToDoList
//
//  Created by Ali Younis on 1/29/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

protocol toDoProtocol {
    func addItemToDoListInTV (toDoItem:String)
}

class ViewController: UIViewController {
    
    var delegate: toDoProtocol?
    
    var thisToDoListArray: [String] = [] {
        didSet {
            listItemsInTV()
        }
    }
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var toDoListDisplayLabel: UILabel!
    
    @IBAction func addItemToToDoList(sender: AnyObject) {
        
        self.delegate?.addItemToDoListInTV(itemTextField.text)
        self.dismissViewControllerAnimated(true, completion: nil)
        
        thisToDoListArray.append(itemTextField.text)
        
        toDoListDisplayLabel.text = toDoListDisplayLabel.text! + "\n" + " # " + thisToDoListArray.last!
        
        println("\(thisToDoListArray) \n")
    }
    
    func listItemsInTV() {
        var listString = ""
        for item:String in self.thisToDoListArray {
            listString += " # " + item + "\n"
        }
        
        self.toDoListDisplayLabel.text = listString
        println("fpp \(listString)")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

