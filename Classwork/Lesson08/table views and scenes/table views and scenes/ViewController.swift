//
//  ViewController.swift
//  Table View & Scenes
//
//  Created by Ali Younis on 1/26/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var swipeView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func initiateRightSwipeOnRedBox() {
        let swipeR = UISwipeGestureRecognizer (target: self, action: "swipedRight:")
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        
        self.swipeView.addGestureRecognizer(swipeR)
    }
    
    func swipedRight(sender: UISwipeGestureRecognizer) {
        self.resultsLabel.text = "You swiped right!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
