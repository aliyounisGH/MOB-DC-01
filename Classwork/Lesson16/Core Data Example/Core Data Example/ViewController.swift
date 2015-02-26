//
//  ViewController.swift
//  Core Data Example
//
//  Created by Ali Younis on 2/25/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
    //always have the line above

    override func viewDidLoad() {
        super.viewDidLoad()
        if let moc = self.appDelegate.managedObjectContext {
            var ena = NSEntityDescription.insertNewObjectForEntityForName("Animal", inManagedObjectContext: moc) as Animal
            ena.name = "Tedi"
            ena.numberOfLegs = 4
            ena.hasFurr = true
            ena.noise = "wuff wuff"
            appDelegate.saveContext()
        }
    }
    
    @IBAction func loadAnimalData(sender: AnyObject) {
        
        if let moc = self.appDelegate.managedObjectContext {
            let fetchAnimals = NSFetchRequest(entityName: "Animal")
            
            //must add predicate before executing fetch request
            let animalPredicate = NSPredicate(format: "name contains %@", "edi")
            fetchAnimals.predicate = animalPredicate
            
            
            if let animals: [Animal] = moc.executeFetchRequest(fetchAnimals, error: nil) as? [Animal] {
                for animal in animals {
                    println(animal.name)
                    println(animal.noise)
                }
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

