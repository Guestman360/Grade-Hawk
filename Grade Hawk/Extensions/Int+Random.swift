//
//  Int+Random.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import Darwin

extension Int {
    /// Returns a random number within a lower and upper bounds
    public static func random(withLowerBound lower: Int = min, andUpperBound upper: Int = max) -> Int {
        return Int(arc4random_uniform(UInt32(upper)) + UInt32(lower))
    }
}
