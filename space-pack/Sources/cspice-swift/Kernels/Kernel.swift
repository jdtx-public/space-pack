//
//  Kernel.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/14/24.
//


//
//  Kernel.swift
//  SwiftSpiceLib
//
//  Created by Jeff Doar on 12/12/24.
//

import Foundation
import cspice_lib

class Kernel {
    public let filePath: String
    
    init (withFilePath: String) {
        filePath = withFilePath
        furnsh_c(filePath)
    }
    
    deinit {
        unload_c(filePath)
    }
}