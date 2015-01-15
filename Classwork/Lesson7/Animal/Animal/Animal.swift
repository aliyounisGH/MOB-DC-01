//
//  Animal.swift
//  Animal
//
//  Created by Ali Younis on 1/14/15.
//  Copyright (c) 2015 Ali Younis. All rights reserved.
//

import Foundation



class Animal {
    var name: String = ""
    var species: String = ""
    
    func stringRepresentation() ->String {
        return "This is a \(species), its name is \(name)"
    }
}