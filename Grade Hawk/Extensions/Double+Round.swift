//
//  Double+Round.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import Darwin

extension Double {
    /// Rounds up to a specified number of decimal places
    func roundedUpTo(_ decimalPlaces: Int) -> Double {
        let places = Double(10 * decimalPlaces)
        return Double(Darwin.round(places * self) / places)
    }
}
