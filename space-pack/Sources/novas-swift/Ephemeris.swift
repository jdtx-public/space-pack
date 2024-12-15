//
//  EphemerisLoader.swift
//  AstroView2
//
//  Created by Jeff Doar on 11/26/24.
//

import Foundation
import novas_c

public class Ephemeris {
    public init(inputPath: String) {
        let cchars = inputPath.utf8CString
        
        var jdBegin: Double = 0
        var jdEnd: Double = 0
        var jdNumber: Int16 = 0
        
        cchars.withUnsafeBufferPointer { buffer in
            ephem_open(buffer.baseAddress, &jdBegin, &jdEnd, &jdNumber)
        }
    }
    
    deinit {
        ephem_close()
    }
}
