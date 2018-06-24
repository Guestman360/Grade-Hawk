//
//  AssignmentChangesListener.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

protocol AssignmentChangesListener: class {
    func assignmentWasCreated(_ assignment: Assignment)
    func assignmentRubricWasUpdated(_ assignment: Assignment, from rubric1: Rubric, to rubric2: Rubric)
    func assignmentWasUpdated(_ assignment: Assignment)
}
