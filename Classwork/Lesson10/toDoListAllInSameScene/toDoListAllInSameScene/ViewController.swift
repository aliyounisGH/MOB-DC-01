//
//  ViewController.swift
//  toDoListAllInSameScene
//
//  Created by Ali Younis on 1/31/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var toDoListArray: [String] = ["Foo", "bar"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoListArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("todoCell", forIndexPath: indexPath) as UITableViewCell
        let todo = self.toDoListArray[indexPath.row]
        
        cell.textLabel?.text = todo
        return cell
    }
    
    @IBOutlet weak var itemField: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        self.toDoListArray.append(itemField.text)
        println(self.toDoListArray)
        self.toDoList.reloadData()
    }
    
    @IBOutlet var toDoList: UITableView!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

