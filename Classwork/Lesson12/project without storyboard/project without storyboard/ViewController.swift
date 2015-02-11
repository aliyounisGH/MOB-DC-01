//
//  ViewController.swift
//  project without storyboard
//
//  Created by Ali Younis on 2/4/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create text field for username, text field for pw, button for login, label for the title at top
        
        var usernameTextField = UITextField(frame: CGRect(x: 20, y: 50, width: self.view.frame.width - 40, height: 70))
        usernameTextField.backgroundColor = UIColor.blackColor()
        usernameTextField.layer.cornerRadius = 10
        self.view.addSubview(usernameTextField)

        //password
        var pwTextField = UITextField(frame: CGRect(x: 20, y: 100, width: self.view.frame.width - 40, height: 70))
        pwTextField.backgroundColor = UIColor.redColor()
        pwTextField.layer.cornerRadius = 10
        self.view.addSubview(pwTextField)
        pwTextField.secureTextEntry = true
        
        //button
        var loginButton = UIButton(frame: CGRect(x: 20, y: 150, width: self.view.frame.size.width - 40, height: 70))
        loginButton.setTitle("login", forState: UIControlState.Normal)
        loginButton.backgroundColor = UIColor.grayColor()
        loginButton.addTarget(self, action: "logMeIn:", forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)
        
    }

    func logMeIn(sender: UIButton) {
        sender.removeFromSuperview()
        
        //label for logged in
        var loggedInLabel = UILabel(frame: CGRect(x: 20, y: 200, width: self.view.frame.size.width - 40, height: 70))
        loggedInLabel.backgroundColor = UIColor.blackColor()
        loggedInLabel.textColor = UIColor.whiteColor()
        loggedInLabel.text = "You successfully logged in"
        self.view.addSubview(loggedInLabel)
        
    }



}

