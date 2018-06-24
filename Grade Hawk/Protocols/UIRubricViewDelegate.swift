//
//  UIAnimatedTextFieldButtonDelegate.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit

/// Protocol for the rubric view
protocol UIRubricViewDelegate: class {
    /// Notifies delegate that the plus button was touched
    func plusButtonTouched(_ view: UIRubricView, withState state: UIRubricViewState?)
    /// Notifies delgate that the rubrics valid state was updated
    func isRubricValidUpdated(forView view: UIRubricView)
    /// Notifies when the weight fields keyboard 'Calculate' button was tapped
    func calculateButtonWasTapped(forView view: UIRubricView, textField: UITextField)
}
