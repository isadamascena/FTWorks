//
//  TogglePlistProviderMock.swift
//  FTWorksTests
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation
@testable import FTWorks

class TogglePlistProviderMock: PlistProvider {
    var didCallGetTogglesPlist = false
    var result : Dictionary<String, Bool>
    
    init(toReturn dict: Dictionary<String, Bool>) {
        self.result = dict
    }
    
    func getTogglesPlist() -> Dictionary<String, Bool> {
        didCallGetTogglesPlist = true
        return self.result
    }
}
