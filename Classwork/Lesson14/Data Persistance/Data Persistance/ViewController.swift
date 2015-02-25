//
//  ViewController.swift
//  Data Persistance
//
//  Created by Ali Younis on 2/23/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var helloLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        //defaults.setObject("light", forKey: "theme")
        //pull the value for the theme key stored in NSUserDefaults
        let theme = defaults.objectForKey("theme") as String
        //println(theme)
        if theme == "dark" {
            self.view.backgroundColor = UIColor.blackColor()
            self.helloLabel.textColor = UIColor.whiteColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
            self.helloLabel.textColor = UIColor.blackColor()
        }
        
        var booksPath = NSBundle.mainBundle().pathForResource("books", ofType: "plist")
        
        var books = NSMutableArray(contentsOfFile: booksPath!)
        
        books![0].setValue("Ena's world 2", forKey: "Title")
        
        books?.writeToFile(booksPath!, atomically: true)
        
        println(books!)
        
        
      //  println(books!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

