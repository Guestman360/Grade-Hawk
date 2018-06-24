//
//  Rubric.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import Foundation
import RealmSwift

class Rubric: Object {
    
    // MARK: - Properties
    
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var weight: Double = 0.0
    
    class var pointsRubric: Rubric {
        let rubric = Rubric(name: "Assignments", weight: 100)
        return rubric
    }
    
    // MARK: - Initializers
    
    convenience init(name: String, weight: Double) {
        self.init()
        self.name = name
        self.weight = weight
    }
    
    // MARK: - Overrides
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        guard let rubric = object as? Rubric else { return false }
        return rubric.name == self.name && rubric.weight == self.weight
    }
    
    override func copy() -> Any {
        let r = Rubric(name: self.name, weight: self.weight)
        r.id = self.id
        return r
    }
}

