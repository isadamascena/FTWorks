//
//  FTWorks.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation

class FTWorks : FTWorksToggles {
    private let provider : PlistProvider
    
    init(provider: PlistProvider =
        TogglePlistProvider(forFile: PlistConstants.togglePlistName, of: PlistConstants.plistType)){
        self.provider = provider
    }
    
    internal func get() -> Dictionary<String, Bool> {
        return provider.getTogglesPlist()
    }
}
