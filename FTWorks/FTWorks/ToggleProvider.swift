//
//  ToggleProvider.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 29/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation

class ToggleProvider : Provider {
    private let processInfoWrapper : ProcessInfoWrapperProtocol
    
    init(processInfo: ProcessInfoWrapperProtocol = ProcessInfoWrapper()){
        self.processInfoWrapper = processInfo
    }
    
    func getToggles() -> Dictionary<String, String>{
        return self.processInfoWrapper.getEnviromentVariables()
    }
}
