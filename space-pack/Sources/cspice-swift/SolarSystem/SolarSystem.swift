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
            499: "Mars" ,
            599: "Jupiter" ,
            699: "Saturn" ,
            799: "Uranus" ,
            899: "Neptune"
        ]
        
        var localPlanets = [String: PlanetBody]()
        
        initDict.forEach { key, name in
                localPlanets[name] = PlanetBody(name: name, naifId: key)
        }
        
        _planets = localPlanets
    }
}
