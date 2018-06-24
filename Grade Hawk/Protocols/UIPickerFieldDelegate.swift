//
//  UIPickerFieldDelegate.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

protocol UIPickerFieldDelegate: class {
    func doneButtonTouched(for field: UIPickerField)
    
    func didSelectPickerRow(_ row: Int, in component: Int, for field: UIPickerField)
}
