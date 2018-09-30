//
//  TogglePlistProvider.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation

class TogglePlistProvider : PlistProvider {
    let bundle : Bundle =  Bundle.main
    
    var fileName : String?
    var fileType : String?
    
    init(forFile file: String, of type: String) {
        self.fileName = file
        self.fileType = type
    }
    
    func getTogglesPlist() -> Dictionary<String, Bool> {
        guard let path = bundle.path(forResource: self.fileName, ofType: self.fileType) else {
            Logger.logger.debug("path for: \(self.fileName ?? "").\(self.fileType ?? "") not found within this project")
            return Dictionary<String, Bool>()
        }
        return NSDictionary(contentsOfFile: path) as! Dictionary<String,Bool>
    }
}
