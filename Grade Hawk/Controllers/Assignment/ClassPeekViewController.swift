//
//  ClassPeekViewController.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit
import UICircularProgressRing

class ClassPeekViewController: UIViewController {

    @IBOutlet weak var progressRing: UICircularProgressRingView!
    
    var progress: CGFloat = 0.0
    var color: UIColor? = nil
    var indexPathForPeek: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let color = self.color {
            self.progressRing.ringStyle = .gradient
            self.progressRing.innerRingColor = color
            self.progressRing.outerRingColor = ApplicationTheme.shared.backgroundColor.lighter(by: 20) ?? ApplicationTheme.shared.backgroundColor
            self.progressRing.gradientColors = [color.lighter(by: 40) ?? color,
                                                color,
                                                color.darker(by: 30) ?? color]
        }
        
        let roundingAmount = UserDefaults.standard.integer(forKey: kUserDefaultRoundingAmount)
        self.progressRing.decimalPlaces = roundingAmount
        self.progressRing.font = UIFont.systemFont(ofSize: 45)
        self.progressRing.setProgress(to: self.progress, duration: 1.5)
    }
    
    func setUI(for classObj: Class) {
        self.color = classObj.color
        self.progress = CGFloat(Class.calculateScore(in: classObj))
    }
    
}
