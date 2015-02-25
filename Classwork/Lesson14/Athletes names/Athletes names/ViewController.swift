//
//  ViewController.swift
//  Athletes names
//
//  Created by Ali Younis on 2/23/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
       
        var myAthletes = defaults.objectForKey("athletes") as NSArray as Array
        println(myAthletes)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

