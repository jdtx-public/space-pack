//
//  PlanetBody.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/14/24.
//


//
//  PlanetBody.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/13/24.
//

import Foundation
import cspice_lib

public class PlanetBody {
    private let _name: String
    private let _naifId: Int32
    
    public init(name: String, naifId: Int32) {
        _name = name
        _naifId = naifId
    }
    
    // TODO: store other properties like mass or radius or whatever here
}
