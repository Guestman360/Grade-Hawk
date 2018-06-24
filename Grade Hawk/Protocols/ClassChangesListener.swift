//
//  ClassChangesListener.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

protocol ClassChangesListener: class {
    func classWasCreated(_ classObj: Class)
    func classSemesterWasUpdated(_ classObj: Class, from sem1: Semester, to sem2: Semester)
    func classWasUpdated(_ clasObj: Class)
}
