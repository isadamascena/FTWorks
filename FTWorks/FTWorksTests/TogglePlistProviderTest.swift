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
    
    var togglePlistProvider : TogglePlistProvider!
    
    override func setUp() {
        togglePlistProvider = TogglePlistProvider()
        
    }
    
    func testTogglePlistProviderShouldConformWithPlistProviderProtocol() {
        XCTAssertNotNil(togglePlistProvider as? PlistProvider)
    }
    
    func testTogglePlistProviderShouldHaveAccessToMainBunddle() {
        XCTAssertNotNil(togglePlistProvider.bundle)
    }
    
    func testTogglePlistProviderShouldHaveTogglesAsFileName(){
        togglePlistProvider.fileName = PlistConstants.togglePlistName
        
        XCTAssertNotNil(togglePlistProvider.fileName)
        XCTAssertTrue(togglePlistProvider.fileName == "Toggles")
    }
    
    func testTogglePlistProviderShouldHavePlistasFileType() {
        togglePlistProvider.fileType = PlistConstants.plistType
        
        XCTAssertNotNil(togglePlistProvider.fileType)
        XCTAssertTrue(togglePlistProvider.fileType == "plist")
    }
}
