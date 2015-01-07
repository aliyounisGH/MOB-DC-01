//
//  ViewController.swift
//  entertainment
//
//  Created by Ali Younis on 12/31/14.
//  Copyright (c) 2014 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        logo.transform = CGAffineTransformMakeRotation((-30.0 * CGFloat(M_PI)) / 180.0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

