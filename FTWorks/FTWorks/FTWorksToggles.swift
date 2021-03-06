//
//  FTWorksToggles.swift
//  FTWorks
//
//  Created by Isabelly Damascena on 30/09/18.
//  Copyright © 2018 Isabelly Damascena. All rights reserved.
//

import Foundation

protocol FTWorksToggles {
    func retrieveToggles()
    func isToggleOn(_ name: String) -> Bool
}
