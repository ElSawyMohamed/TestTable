//
//  testTableViewCell.swift
//  TableTest
//
//  Created by Razy Tech on 8/4/19.
//  Copyright © 2019 Razy Tech. All rights reserved.
//

import UIKit

class testTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameBranch: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
