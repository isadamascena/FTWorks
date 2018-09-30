//
//  FTWorks.swift
//  FTWorksTests
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import XCTest
@testable import FTWorks

class FTWorksTest : XCTestCase {
    
    func testShouldConformWithFTWorksTogglesProtocol() {
        let ftWorks = FTWorks()
        XCTAssertNotNil(ftWorks as? FTWorksToggles)
    }
}
