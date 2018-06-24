//
//  GradePercentageTableViewCell.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit

class GradePercentageTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = ApplicationTheme.shared.lightBackgroundColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
