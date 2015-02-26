//
//  ViewController.swift
//  Save Load Content
//
//  Created by Ali Younis on 2/25/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFile: UITextView!
    
    
    @IBAction func saveData(sender: UIButton) {

        let fileManager = NSFileManager()
        
        
        
        
//        var tempPath = NSDoc + textFile.text
//        var textToLoad: NSString? = NSString(contentsOfFile: tempPath, encoding: NSUTF32StringEncoding, error: nil)
//        
//        if let contentExists = textToLoad {
//            println("\(textToLoad!)")
//        } else {
//            println("couldn't load!")
//        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

