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
    private var toggles : Dictionary<String, Bool>!
    
    static func instance() -> FTWorks {
        let instance = FTWorks()
        instance.retrieveToggles()
        return instance
    }
    
    internal init(provider: PlistProvider =
        TogglePlistProvider(forFile: PlistConstants.togglePlistName, of: PlistConstants.plistType)){
        self.provider = provider
    }
    
    internal func retrieveToggles() {
        self.toggles = provider.getTogglesPlist()
    }
    
    func isToggleOn(_ name: String) -> Bool {
        return self.toggles[name]!
    }
}
