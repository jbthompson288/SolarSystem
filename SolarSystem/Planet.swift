//
//  Planet.swift
//  SolarSystem
//
//  Created by JB Thompson on 8/18/16.
//  Copyright © 2016 JB Thompson. All rights reserved.
//

import Foundation

class Planet {
    
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKMsFromSun: Float
    
    init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float) {
        
        self.name = name
        self.imageName = name.lowercased()
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
        
    }
    
}
