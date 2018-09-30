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
    func getTogglesPlist() -> Dictionary<String, Bool> {
        didCallGetTogglesPlist = true
        return Dictionary<String,Bool>()
    }
}
