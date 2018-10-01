//
//  Logger.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation


internal class Logger {
    
    static let logger = Logger()
    
    private init() {}
    
    func debug(_ message: String){
        print("[DEBUG] \(message)")
    }
}
