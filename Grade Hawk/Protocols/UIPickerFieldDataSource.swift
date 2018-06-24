//
//  UIPickerFieldDataSource.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

protocol UIPickerFieldDataSource: class {
    func numberOfComponents(in field: UIPickerField) -> Int
    
    func numberOfRows(in compononent: Int, for field: UIPickerField) -> Int
    
    func titleForRow(_ row: Int, in component: Int, for field: UIPickerField) -> String?
}

