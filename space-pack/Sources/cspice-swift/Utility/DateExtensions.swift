//
//  DateExtensions.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/12/24.
//

import Foundation
import cspice_lib

public extension Date {
    var julian : Double {
        let jd = (self.timeIntervalSince1970 - 2440588.5) / 86400.0
        return jd
    }
    
    var ephemerisTime : Double {
        let jd = self.julian
        
        // until we get ephemeris figured out, just return julian time
        // let retVal = unitim_c(jd, "JED", "ET")
        return jd
    }
}
