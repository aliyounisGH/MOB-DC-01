//
//  ViewController.swift
//  Animal
//
//  Created by Ali Younis on 1/14/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func catButton(sender: AnyObject) {
        var roxie = Animal()
        roxie.name = "roxie"
        roxie.species = "cat"
        
        textField.text = roxie.stringRepresentation()
    }
    
    
    @IBAction func dogButton(sender: AnyObject) {
        var Babel = Animal()
        Babel.name = "Babel"
        Babel.species = "dog"
        
        textField.text = Babel.stringRepresentation()
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

