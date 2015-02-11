//
//  ViewController.swift
//  auto layout code along
//
//  Created by Ali Younis on 2/9/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mouth: UIView!
    
    @IBOutlet weak var changeMouthHeight: NSLayoutConstraint!
    
    @IBAction func changeMouthColor(sender: AnyObject) {
        
        UIView.animateWithDuration(2, animations: {
        self.mouth.backgroundColor = UIColor.redColor()
        
        })
        
        self.changeMouthHeight.constant = 88
        UIView.animateWithDuration(2, animations: {
            self.view.layoutIfNeeded()
        })
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

