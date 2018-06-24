//
//  Segueable.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit

protocol Segueable {
    associatedtype SegueIdentifier: RawRepresentable
}

extension Segueable where Self: UIViewController, SegueIdentifier.RawValue == String {
    /// Performs a segue given the identifier
    func performSegue(withIdentifier identifier: SegueIdentifier, sender: Any?) {
        performSegue(withIdentifier: identifier.rawValue, sender: sender)
    }
    
    /// Returns a segue identifier for the specified segue
    func segueIdentifier(forSegue segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier, let segueIdentifer = SegueIdentifier(rawValue: identifier) else {
            fatalError("Invalid segue identfier \(String(describing: segue.identifier))")
        }
        
        return segueIdentifer
    }
}
