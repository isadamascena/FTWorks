//
//  ProcessInfoWrapper.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 29/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation

protocol ProcessInfoWrapperProtocol {
    func getEnviromentVariables() -> Dictionary<String, String>
}

class ProcessInfoWrapper : ProcessInfoWrapperProtocol {
    private let environment = ProcessInfo.processInfo.environment
    
    func getEnviromentVariables() -> Dictionary<String, String> {
        return environment
    }
}
