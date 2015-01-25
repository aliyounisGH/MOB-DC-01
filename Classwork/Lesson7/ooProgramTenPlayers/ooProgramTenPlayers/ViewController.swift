//
//  ViewController.swift
//  ooProgramTenPlayers
//
//  Created by Ali Younis on 1/21/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySquare: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func swipeSquareRight(sender: UISwipeGestureRecognizer) {
        //mySquare.backgroundColor = UIColor.redColor()
        UIView.animateWithDuration(1.5, animations: {
            self.mySquare.backgroundColor = UIColor.redColor()
            self.mySquare.alpha = 0.75
        })
    }
    
    @IBAction func swipeSquareLeft(sender: UISwipeGestureRecognizer) {
        //mySquare.backgroundColor = UIColor.redColor()
        UIView.animateWithDuration(1.5, animations: {
            self.mySquare.backgroundColor = UIColor.orangeColor()
            //self.mySquare.alpha = 0.75

        })}
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

