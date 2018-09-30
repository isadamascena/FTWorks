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
    
    func testShouldRetrieveDictionaryFromTogglePlistProvider() {
        let togglePlistProviderMock = TogglePlistProviderMock(toReturn: Dictionary<String, Bool>())
        let ftWorks = FTWorks(provider: togglePlistProviderMock)
        
        _ = ftWorks.get()
        
        XCTAssertTrue(togglePlistProviderMock.didCallGetTogglesPlist)
    }
    
    func testIsToggleOnShouldRetrieveFalseWhenToggleIsNotListed() {
        let togglePlistProviderMock = TogglePlistProviderMock(toReturn: ["isToggleOn": true])
        let ftWorks = FTWorks(provider: togglePlistProviderMock)
        
        let isOn = ftWorks.isToggleOn("isToggleOn")
        
        XCTAssertTrue(isOn)
    }
}
