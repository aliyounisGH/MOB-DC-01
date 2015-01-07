//
//  SecondViewController.swift
//  tabbed entertainment
//
//  Created by Ali Younis on 1/3/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var cover: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     cover.transform = CGAffineTransformMakeRotation(0.8)

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

