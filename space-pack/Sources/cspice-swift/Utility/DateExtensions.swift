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
        let components = DateComponents(year: 2000, month: 1, day: 1, hour: 0, minute: 0, second: 0)
        let refDate = Calendar.current.date(from: components)!
        
        let dateDiff = self.timeIntervalSince(refDate)
        
        return dateDiff
    }
}
