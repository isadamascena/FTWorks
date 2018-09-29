//
//  ProcessInfoWrapperMock.swift
//  FTWorksTests
//
//  Created by Isabelly Damascena on 29/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation
@testable import FTWorks

class ProcessInfoWrapperMock : ProcessInfoWrapperProtocol {
    private let expectedReturn : Dictionary<String, String>
    
    init(toReturn expectedReturn: Dictionary<String,String>) {
        self.expectedReturn = expectedReturn;
    }
    
    func getEnviromentVariables() -> Dictionary<String, String> {
        return self.expectedReturn
    }
}
