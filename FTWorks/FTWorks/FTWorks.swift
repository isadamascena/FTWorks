//
//  FTWorks.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation

/**
Intuitive framework for implementing Feature Toggles
 
Written by: Isabelly Damscena
*/
class FTWorks : FTWorksToggles {
    private let provider : PlistProvider
    private var toggles : Dictionary<String, Bool>!
    
    private static let instance = FTWorks()
    
    /**
     Gets an Singleton instance of FTWorks.
     
     - Returns: A `FTWorks` instance.
     */
    static func getInstance() -> FTWorks {
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
    
    /**
     Verifies whether the toggle within the parameter is On or Off. Also logs if it could not get a toggle.
     
     - Parameter name: The toggles's name.
     
     - Returns: A `Bool` value indicating whether the toggle is On of Off.
     */
    func isToggleOn(_ name: String) -> Bool {
        guard let toggle = self.toggles[name] else {
            Logger.logger.debug("toggle with name= \(name) was not found among your set of toggles")
            return false
        }
        return toggle
    }
}
