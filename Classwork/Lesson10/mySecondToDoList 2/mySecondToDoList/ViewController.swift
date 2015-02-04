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

class ViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: toDoProtocol?
    
    var thisToDoListArray: [String] = [] {
        didSet {
            listItemsInTV()
        }
    }
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var toDoListDisplayLabel: UILabel!
    
    
    @IBOutlet weak var errorMessage: UILabel!
    
    
    
    @IBOutlet weak var hiddenLabel: UILabel!
    
    
    
    @IBAction func addItemToToDoList(sender: AnyObject) {
        
        self.delegate?.addItemToDoListInTV(itemTextField.text)
        self.dismissViewControllerAnimated(true, completion: nil)
        
        thisToDoListArray.append(itemTextField.text)
        
        toDoListDisplayLabel.text = toDoListDisplayLabel.text! + "\n" + " # " + thisToDoListArray.last!
        
        println("\(thisToDoListArray) \n")
    }
    
    
    @IBAction func pressPostButton(sender: AnyObject) {
        
        //first step in setting notification
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
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
        
        self.itemTextField.delegate = self
        self.errorMessage.hidden = true
        
        self.hiddenLabel.hidden = true
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "unhideCurrentLabels:",
            name: "unhideHiddenLabels",
            object: nil)
        
        // the "functionName:" is a string for the name of the function and colon means there will be input parameters
        
        //now to listen to a pre-defined system notification ..
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "textHasChanged:",
            name: UITextFieldTextDidChangeNotification,
            object: nil)
        
    }
    
    func textHasChanged(notifications: NSNotification) {
        println("text has changed")
    }
    
    func unhideCurrentLabels(notification: NSNotification) {
        self.hiddenLabel.hidden = false
        println("trigerred unhideHiddenLabels notification")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.itemTextField.text.isEmpty {
            println("Your text field is empty, enter something")
            textField.resignFirstResponder()
            self.errorMessage.hidden = false
        }
        else {
            self.errorMessage.hidden = true
        }
    
    return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

