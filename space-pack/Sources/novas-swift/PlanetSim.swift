//
//  PlanetSim.swift
//  AstroView2
//
//  Created by Jeff Doar on 11/23/24.
//

import Foundation
import simd
import novas_c

public class PlanetSim {
    private class EphemerisPlanet {
        public init(planet: novas_planet) {
            novas_object = object()
            make_planet(planet, &novas_object)
        }
        
        public func position(d: Date) -> simd_double3 {
            let jd = d.julian2
            
            var jd_tdb: [Double] = [jd, 0.0]
            var eph_pos: [Double] = [0.0, 0.0, 0.0]
            var eph_vel: [Double] = [0.0, 0.0, 0.0]
            let retVal = ephemeris(&jd_tdb, &novas_object, NOVAS_BARYCENTER,
                                   NOVAS_REDUCED_ACCURACY, &eph_pos, &eph_vel)
            
            return simd_double3(x: eph_pos[0], y: eph_pos[1], z: eph_pos[2])
        }
        
        private var novas_object: object
    }
    
    public init(ephemerisPath: String) {
        _ephemeris = Ephemeris(inputPath: ephemerisPath)
    }
    
    public func sunPos(d: Date) -> simd_double3 {
        return _sun.position(d: d)
    }
    
    public func mercuryPos(d: Date) -> simd_double3 {
        return _mercury.position(d: d)
    }
    
    public func venusPos(d: Date) -> simd_double3 {
        return _venus.position(d: d)
    }
    
    public func earthPos(d: Date) -> simd_double3 {
        let retVal = _earth.position(d: d)
        return retVal
    }
    
    public func moonPos(d: Date) -> simd_double3 {
        return _moon.position(d: d)
    }
    
    public func marsPos(d: Date) -> simd_double3 {
        return _mars.position(d: d)
    }
    
    public func jupiterPos(d: Date) -> simd_double3 {
        return _jupiter.position(d: d)
    }
    
    public func saturnPos(d: Date) -> simd_double3 {
        return _saturn.position(d: d)
    }
    
    public func uranusPos(d: Date) -> simd_double3 {
        return _uranus.position(d: d)
    }
    
    public func neptunePos(d: Date) -> simd_double3 {
        return _neptune.position(d: d)
    }
    
    private let _sun = EphemerisPlanet(planet: NOVAS_SUN)
    private let _mercury = EphemerisPlanet(planet: NOVAS_MERCURY)
    private let _venus = EphemerisPlanet(planet: NOVAS_VENUS)
    private let _earth = EphemerisPlanet(planet: NOVAS_EARTH)
    private let _moon = EphemerisPlanet(planet: NOVAS_MOON)
    private let _mars = EphemerisPlanet(planet: NOVAS_MARS)
    private let _jupiter = EphemerisPlanet(planet: NOVAS_JUPITER)
    private let _saturn = EphemerisPlanet(planet: NOVAS_SATURN)
    private let _uranus = EphemerisPlanet(planet: NOVAS_URANUS)
    private let _neptune = EphemerisPlanet(planet: NOVAS_NEPTUNE)

    private let _ephemeris: Ephemeris
}
