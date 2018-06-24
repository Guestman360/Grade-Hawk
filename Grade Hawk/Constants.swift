//
//  Constants.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/13/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit
import Foundation

/**
 This file contains any constants, usually strings for keys/notifications used throughout the app
 */

/// The default letter grades in order of the ranges below for non-plus scale
/// The default letter grades in order of the ranges below for plus scale
let kLetterGrades = [
    "A",
    "B",
    "C",
    "D",
    "F"
]

/// The default grading percentages and their ranges for non-plus scale, index 0 is A, index 1 is B, and so on
let kGradeLetterRanges = [
    90.00...Double.infinity,
    80.00...89.99,
    70.00...79.99,
    60.00...69.99,
    0.00...59.99
]

/// The default letter grades in order of the ranges below for plus scale
let kPlusScaleLetterGrades = [
    "A+",
    "A",
    "A-",
    "B+",
    "B",
    "B-",
    "C+",
    "C",
    "C-",
    "D+",
    "D",
    "D-",
    "F"
]

/// The default grading percentages and their ranges for plus scale, index 0 is A+, index 1 is A, and so on
let kPlusScaleGradeLetterRanges = [
    100...Double.infinity,
    93.00...100,
    90.00...92.99,
    87.00...89.99,
    83.00...86.99,
    80.00...82.99,
    77.00...79.99,
    73.00...76.99,
    70.00...72.99,
    67.00...69.99,
    63.00...66.99,
    60.00...62.99,
    0.00...59.99,
]

// User default keys
let kUserDefaultOnboardingComplete = "com.matthewguest.GradeHawk.onboardingComplete"
let kUserDefaultStudentType = "com.matthewguest.GradeHawk.studentType"
let kUserDefaultTerms = "com.matthewguest.GradeHawk.terms"
let kUserDefaultTheme = "com.matthewguest.GradeHawk.theme"
let kUserDefaultLastDateAskedRating = "com.matthewguest.GradeHawk.lastDateAsked"
let kUserDefaultHasAskedRating = "com.matthewguest.GradeHawk.hasAskedRating"
let kUserDefaultRoundingAmount = "com.matthewguest.GradeHawk.roundingAmount"
let kUserDefaultGradeBirdHighScore = "com.matthewguest.GradeHawk.gradeBirdHighScore"
let kUserDefaultHasModifiedGradePercentages = "com.matthewguest.GradeHawk.hasModifiedGradePercentages"

// Notifications
let kSemestersUpdatedNotification = Notification.Name("com.matthewguest.GradeHawk.semestersUpdated")
let kThemeUpdatedNotification = Notification.Name("com.matthewguest.GradeHawk.themeUpdated")

// Custom URL's
let kGradePointOpenURL = URL(string: "gradePoint://com.matthewguest.GradeHawk.open")!
let kEmptyWidgetActionURL = URL(string: "gradePoint://com.matthewguest.GradeHawk.emptyWidgetAction")!

// Misc.
let kContactEmail = "matthewguest.dev@gmail.com"
let kGradePointGroupId = "group.com.matthewguest.GradeHawk"
