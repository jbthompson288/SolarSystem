//: Playground - noun: a place where people can play

import Cocoa

// Planet.swift file

class Planet {
    
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKMsFromSun: Float
    
    init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float) {
        
        self.name = name
        self.imageName = name.lowercaseString
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
        
    }
    
}

//  PlanetController.swift

class PlanetController {
    
    static let sharedInstance = PlanetController()
    
    var planets: [Planet]
    
    init() {
        self.planets = PlanetController.planets
    }
    
    func removePlanet(planet: Planet) {
        planets = planets.filter({$0.name != planet.name})
    }
    
    func addPlanet(planet: Planet) {
        planets.append(planet)
    }
    
    static var planets: [Planet] {
        let mercury = Planet(name: "Mercury", diameter: 4879, dayLength: 4222.6, millionKMsFromSun: 57.9)
        
        let venus = Planet(name: "Venus", diameter: 12104, dayLength: 2802, millionKMsFromSun: 108.2)
        
        let earth = Planet(name: "Earth", diameter: 12756, dayLength: 24, millionKMsFromSun: 149.6)
        
        let mars = Planet(name: "Mars", diameter: 6792, dayLength: 24.7, millionKMsFromSun: 227.9)
        
        let jupiter = Planet(name: "Jupiter", diameter: 142984, dayLength: 9.9, millionKMsFromSun: 778.6)
        
        let saturn = Planet(name: "Saturn", diameter: 120536, dayLength: 10.7, millionKMsFromSun: 1433.5)
        
        let uranus = Planet(name: "Uranus", diameter: 51118, dayLength: 17.2, millionKMsFromSun: 2872.5)
        
        let neptune = Planet(name: "Neptune", diameter: 49528, dayLength: 16.1, millionKMsFromSun: 4495.1)
        
        let pluto = Planet(name: "Pluto", diameter: 2370, dayLength: 153.3, millionKMsFromSun: 5906.4)
        
        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
    }
    
}
