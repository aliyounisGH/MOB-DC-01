//
//  UserViewController.swift
//  Whisperer
//
//  Created by Ali Younis on 3/11/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    
    @IBOutlet weak var feedback: UILabel!
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var currentUser = PFUser.currentUser()
        
        if currentUser != nil {
            println("You are logged in!")
            println(currentUser)
        } else {
            println("not logged in!")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logIn(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(self.username.text, password: self.password.text) { (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                self.feedback.text = "successfully logged in!"
            } else {
                self.feedback.text = "error logging in!"
            }
        }
    }
    
    
    @IBAction func register(sender: AnyObject) {
        var user = PFUser()
        user.username = self.username.text
        user.password = self.password.text
        user.email = self.username.text
        
        user.signUpInBackgroundWithBlock { (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                self.feedback.text = "successfully signed up!"
                self.username.text = ""
                self.password.text = ""
            } else {
                let userError = error.userInfo!["error"] as? NSString
                self.feedback.text = userError
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
