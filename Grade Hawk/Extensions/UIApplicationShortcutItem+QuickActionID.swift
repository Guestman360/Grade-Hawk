//
//  UIApplicationShortcutItem+QuickActionID.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit

extension UIApplicationShortcutItem {
    var quickActionId: QuickActionId {
        get {
            if let id = QuickActionId(rawValue: self.type) {
                return id
            } else {
                return .unknown
            }
        }
    }
}
