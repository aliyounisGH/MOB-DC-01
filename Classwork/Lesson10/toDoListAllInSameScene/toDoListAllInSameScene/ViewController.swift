//
//  ViewController.swift
//  toDoListAllInSameScene
//
//  Created by Ali Younis on 1/31/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var toDoListArray: [String] = []
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        addItem(itemField.text)
        let(toDo) = toDoListArray[indexPath.row]
        
        cell.textLabel?.text = toDo
        return cell
    }
    
    @IBOutlet weak var itemField: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        toDoListArray.append(itemField.text)
        println(toDoListArray)
    }
    
    @IBOutlet var toDoList: UITableView!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    



}

