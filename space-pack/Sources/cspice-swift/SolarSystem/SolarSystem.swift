//
//  SolarSystem.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/14/24.
//


//
//  SolarSystem.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/13/24.
//

import Foundation
import cspice_lib

public class SolarSystem {
    private let _planets: [String: PlanetBody]
    
    public let sun: PlanetBody = PlanetBody(name: "Sun", naifId: 10)
    
    public init() {
        let initDict: [Int32: String] = [
            199: "Mercury" ,
            299: "Venus" ,
            399: "Earth",
            301: "Moon",
            4: "Mars" ,
            5: "Jupiter" ,
            501: "Io",
            502: "Europa",
            503: "Ganymede",
            504: "Callisto",
            6: "Saturn" ,
            7: "Uranus" ,
            8: "Neptune"
        ]
        
        var localPlanets = [String: PlanetBody]()
        
        initDict.forEach { key, name in
                localPlanets[name] = PlanetBody(name: name, naifId: key)
        }
        
        localPlanets["Sun"] = sun
        
        _planets = localPlanets
    }
    
    public subscript(name: String) -> PlanetBody? {
        return _planets[name]
    }
}
