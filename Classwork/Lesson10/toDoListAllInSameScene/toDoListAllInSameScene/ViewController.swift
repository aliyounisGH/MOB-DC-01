//
//  ViewController.swift
//  toDoListAllInSameScene
//
//  Created by Ali Younis on 1/31/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var itemField: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        toDoItems.append(itemField.text)
        
    }
    
    @IBOutlet var toDoList: UITableView!
    
    var toDoItems: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.toDoList.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return self.toDoItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.toDoList.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.toDoItems[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
    }


}

