//
//  TogglePlistProvider.swift
//  FTWorksTests
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import XCTest
@testable import FTWorks

class TogglePlistProviderTest : XCTestCase {
    
    func testTogglePlistProviderShouldConformWithPlistProviderProtocol() {
        let togglePlistProvider = TogglePlistProvider()
        XCTAssertNotNil(togglePlistProvider as? PlistProvider)
    }
    
}
