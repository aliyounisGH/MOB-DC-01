//
//  ViewController.swift
//  programmatic views
//
//  Created by Ali Younis on 2/4/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating a view programmatically
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.cornerRadius = 50
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        //we have to have a super & subview .. self refer to class (super)functions .. however if the superview is an object itself we don't need self
        self.view.addSubview(redBox)
        
        //adding a button to the subview which is the redbox
        var redBoxLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 30)) //width: redBox.frame.width
        redBoxLabel.text = "hello world"
        redBoxLabel.textColor = UIColor.orangeColor()
        redBoxLabel.backgroundColor = UIColor.blackColor()
        redBoxLabel.textAlignment = .Center
        redBox.addSubview(redBoxLabel)
        
        var actionBtn = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        actionBtn.setTitle("click me!", forState: .Normal)
        actionBtn.backgroundColor = UIColor.greenColor()
        
        actionBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        
        actionBtn.addTarget(self, action: "pressedCodedBtn:", forControlEvents: .TouchUpInside) //UIControlEvents.TouchUpInside .. or shorthand
        self.view.addSubview(actionBtn)
        
      /*  var musicImg = UIImage(named: "music.png")
        var musicImgView = UIImageView(image: musicImg)
        musicImgView.frame = CGRect(x: 50, y: 350, width: 200, height: 100) //width: musicImg!.size.width/3, height: musicImg!.size.height/3
        musicImgView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleRightMargin
        self.view.addSubview(musicImgView) */
        
        var greenBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 150))
        greenBox.backgroundColor = UIColor.greenColor()
        
        var yellowBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 150))
        yellowBox.backgroundColor = UIColor.yellowColor()
        
        var purpleBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 150))
        purpleBox.backgroundColor = UIColor.purpleColor()
        
        var boxScrollView = UIScrollView(frame: CGRect(x: 50, y: 350, width: 200, height: 300))
        boxScrollView.backgroundColor = UIColor.grayColor()
        boxScrollView.contentSize = CGSize(width: 200, height: 600)
        self.view.addSubview(boxScrollView)
    }
    
    func pressedCodedBtn(sender: UIButton) {
        println("hello world")
        sender.removeFromSuperview()
    }

    


}

