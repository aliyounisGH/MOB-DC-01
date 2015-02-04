//
//  ViewController.swift
//  ios delegates
//
//  Created by Ali Younis on 2/2/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    var gaCampuses: [String] = []
    
    
    @IBOutlet weak var campusesTable: UITableView!
    
    
    @IBOutlet weak var stuffTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
        
        stuffTextField.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            println("return key pressed!")
            textField.resignFirstResponder()
            return true
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
       
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.orangeColor()
        }
        
  
        cell.textLabel?.text = self.gaCampuses[indexPath.row]

        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.gaCampuses.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    


}

