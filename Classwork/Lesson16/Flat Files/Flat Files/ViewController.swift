//
//  ViewController.swift
//  Flat Files
//
//  Created by Ali Younis on 2/25/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textDisplay: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tempPath = NSTemporaryDirectory() + "hello.txt"
        
      //stringToSave
        
        var fileManager = NSFileManager()
        
    }
    
    @IBAction func saveData(sender: AnyObject) {
        
        let fileManager = NSFileManager()
        
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        if path.count > 0 {
            let documentPath = path[0].relativeString! as String
            let mySavedPath = documentPath + "/savedFile.txt"
            
            var stringToSave = self.textDisplay.text
            stringToSave.writeToFile(stringToSave, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
        } else {
            println("could not save")
        }
        
    }
    
    
    @IBAction func loadData(sender: UIButton) {
        
        let fileManager = NSFileManager()
        
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        if path.count > 0 {
            let documentPath = path[0].relativeString! as String
            let mySavedPath = documentPath + "/savedFile.txt"
            
            var stringToLoad: NSString? = NSString(contentsOfFile: mySavedPath, encoding: NSUTF32StringEncoding, error: nil)
        
        if let loadedContent = stringToLoad {
            println("Content loaded! Content is: \(loadedContent)")
        } else {
            println("Could not load")
        }
        } else {
            println("could not save")
        }
    


}



//       println("Loading content without checking if nil: \(stringToLoad!)")


//3 steps: path which is (path + file being saved to), content, then write to file


//document directory
//1. find the documents path
//2. if documents path exists, run the following code
//3. concatinate our file name after out documents path
//4. access our file from the path we defined above
//5. if the file exists, run the block below

}