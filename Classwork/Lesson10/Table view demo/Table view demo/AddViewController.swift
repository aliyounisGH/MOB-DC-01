//
//  AddViewController.swift
//  Table view demo
//
//  Created by Ali Younis on 1/28/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController {

    var delegate: Campus?
    
    @IBOutlet weak var addTextBox: UITextField!
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        
        self.delegate?.addCampusToArray(addTextBox.text)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
