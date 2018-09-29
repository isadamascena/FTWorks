//
//  ToggleProviderTest.swift
//  FTWorksTests
//
//  Created by Isabelly Damascena on 29/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import XCTest
@testable import FTWorks

class ToggleProviderTest: XCTestCase {

    func testToggleProviderShouldImplementProviderProtocol() {
        let toggleProvider : ToggleProvider = ToggleProvider()
        XCTAssertNotNil(toggleProvider as? Provider)
    }
    
    func testGetTogglesShoulRetrieveAEmptyDictionary() {
        let toggleProvider : Provider = ToggleProvider()
        let togglesDictionary = toggleProvider.getToggles()
        XCTAssertNotNil(togglesDictionary)
        XCTAssertTrue(togglesDictionary.isEmpty)
    }
}
