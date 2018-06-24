//
//  String+Extension.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import Foundation

extension String {
    /// Returns whether or not the string has characters NOT including whitespace
    func isValid() -> Bool {
        let trimmed = self.trimmingCharacters(in: CharacterSet.whitespaces)
        return trimmed.isEmpty ? false : true
    }
}
