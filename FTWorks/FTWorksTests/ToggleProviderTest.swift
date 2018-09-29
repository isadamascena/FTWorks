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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testToggleProviderShouldImplementProviderProtocol() {
        let toggleProvider : ToggleProvider = ToggleProvider()
        XCTAssertNotNil(toggleProvider as? Provider)
    }
}
