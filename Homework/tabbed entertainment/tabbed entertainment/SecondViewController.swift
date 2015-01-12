//
//  SecondViewController.swift
//  tabbed entertainment
//
//  Created by Ali Younis on 1/3/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var logo: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo.transform = CGAffineTransformMakeRotation(-0.5)
        
        // Do any additional setup after loading the view, typically from a nib.

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

