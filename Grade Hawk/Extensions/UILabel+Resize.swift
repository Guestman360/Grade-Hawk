//
//  UILabel+Resize.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit

extension UILabel {
    
    /// Sets the height of the label to the expected height of the text
    func resizeToFitText() {
        let height = expectedHeight()
        var newFrame = self.frame
        newFrame.size.height = height
        self.frame = newFrame
    }
    
    /// Returns the height that would be expected for the string
    func expectedHeight() -> CGFloat {
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        
        let maxLabelSize = CGSize(width: self.frame.size.width, height: CGFloat.greatestFiniteMagnitude)
        let attributedString = NSAttributedString(string: self.text ?? "", attributes: [.font: self.font])
        let rect = attributedString.boundingRect(with: maxLabelSize, options: .usesLineFragmentOrigin, context: nil)
        return rect.height
    }
}
