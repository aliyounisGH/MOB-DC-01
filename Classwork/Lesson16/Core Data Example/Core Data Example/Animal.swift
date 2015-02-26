//
//  Animal.swift
//  Core Data Example
//
//  Created by Ali Younis on 2/25/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

//NSManaged ties the vars/properties to the attributes in the core-data


import Foundation
import CoreData

@objc(Animal)

class Animal: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var numberOfLegs: Int32
    @NSManaged var hasFurr: Bool
    @NSManaged var noise: String
}