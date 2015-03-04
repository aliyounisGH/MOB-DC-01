//
//  ViewController.swift
//  Networking Example
//
//  Created by Ali Younis on 3/2/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var urlTextView: UITextField!
    
    
    @IBOutlet weak var networkingTextView: UITextView!
    
    
    @IBAction func clickURL(sender: AnyObject) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://aliyounis.us")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
            // pass our NS Data return to a string
            var stringData = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            
            //UI updates need to happen on the main thread. By default NSURLSession connections happen as a side thread, so we have to access our main thread to update our views.
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                self.networkingTextView.text = stringData
                
            
            })
            
 
        })
        
        
        task.resume()
    }

  

}

