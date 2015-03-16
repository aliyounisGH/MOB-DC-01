//
//  ViewController.swift
//  Weather
//
//  Created by Ali Younis on 3/9/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    func weatherUpdate(#cityUpdate:String, stateUpdate:String) {
//        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=" + "\(cityUpdate)" + "," + "\(stateUpdate)") {
//            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
//                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil) as? NSDictionary {
//                    if let weather = weatherDict["weather"] as? NSArray {
//                        if let firstItem = weather[0] as? NSDictionary {
//                            if let description = firstItem["description"] as? NSString {
//                                sleep(1)
//                                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                                    self.weatherDescription.text = description
//                                })
//                                
//                            }
//                        }
//                    }
//                }
//            })
//            task.resume()
//        }
//    }
//    
    
    @IBOutlet weak var cityEntry: UITextField!
    
    
    @IBOutlet weak var stateEntry: UITextField!
    
    
    
    @IBOutlet weak var weatherDescription: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Weather.retrieveWeather("washington,dc") { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
            println("The temp is \(weather.fahrenheit)")
        }
        
        
    }
    
    @IBAction func updateWeather(sender: UIButton) {
        
//        if let city = cityEntry.text {
//            if let state = stateEntry.text {
//                weatherUpdate(cityUpdate: city, stateUpdate: state)
//            }
//        }
        
        weatherDescription.text = "Loading ..."
        
        Weather.retrieveWeather(cityEntry.text + "," + stateEntry.text) { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
            println("The temp is \(weather.fahrenheit)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

