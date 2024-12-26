//
//  PlanetCalc.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/14/24.
//


//
//  PlanetCalc.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/12/24.
//

import Foundation
import simd
import cspice_lib

public class PlanetCalc {
    public static func calcPlanetPos(time: Date) -> simd_double3 {
        return calcPosition(ofPlanet: 399, atTime: time)
    }
    
    public static func calcPosition(ofPlanet: Int32, atTime: Date) -> simd_double3 {
        var pos: [SpiceDouble] = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
        var lt: [SpiceDouble] = [0.0]
        let et = atTime.ephemerisTime
        spkezp_c(ofPlanet, et, "J2000", "NONE", 0, &pos, &lt)
        
        let planetPos = simd_double3(pos[0], pos[1], pos[2])
        return planetPos
    }
}
