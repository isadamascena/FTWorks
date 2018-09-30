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
        togglePlistProvider = TogglePlistProvider(forFile: PlistConstants.togglePlistName, of: PlistConstants.plistType)
    }
    
    func testShouldConformWithPlistProviderProtocol() {
        XCTAssertNotNil(togglePlistProvider as? PlistProvider)
    }
    
    func testShouldHaveAccessToMainBunddle() {
        XCTAssertNotNil(togglePlistProvider.bundle)
    }
    
    func testShouldHaveTogglesAsFileName(){
        XCTAssertNotNil(togglePlistProvider.fileName)
        XCTAssertTrue(togglePlistProvider.fileName == "Toggles")
    }
    
    func testShouldHavePlistasFileType() {
        XCTAssertNotNil(togglePlistProvider.fileType)
        XCTAssertTrue(togglePlistProvider.fileType == "plist")
    }
    
    func testGetTogglesPlistShouldGetEmptyDictionaryWhenThereIsNoToggleFileSetUp() {
        let fakeFileName = "File"
        togglePlistProvider = TogglePlistProvider(forFile: fakeFileName, of: PlistConstants.plistType)
        
        let toggles : Dictionary<String, Bool> = togglePlistProvider.getTogglesPlist()
        
        XCTAssertTrue(toggles.isEmpty)
    }
}
