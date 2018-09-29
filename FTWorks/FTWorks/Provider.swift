//
//  Provider.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 29/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation

protocol Provider {
    func getToggles() -> Dictionary<String, String>
}
