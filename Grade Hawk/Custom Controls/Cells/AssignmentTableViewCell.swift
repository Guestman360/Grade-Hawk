//
//  AssignmentTableViewCell.swift
//  Grade Hawk
//
//  Created by Matt Guest on 6/24/18.
//  Copyright © 2018 AlphaApplications. All rights reserved.
//

import UIKit

class AssignmentTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        updateForSelection(selected)
    }

    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        updateForSelection(highlighted)
    }

    // MARK: - Helper Methods

    func updateForSelection(_ selected: Bool) {

        switch ApplicationTheme.shared.theme {
        case .light: fallthrough
        case .eco:
            nameLabel.textColor = selected ? ApplicationTheme.shared.mainTextColor(in: .dark) :
                                                ApplicationTheme.shared.mainTextColor(in: .light)
        case .purple:
            nameLabel.textColor = selected ? .white : ApplicationTheme.shared.mainTextColor()
        default: return
        }
    }
}
