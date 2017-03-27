//
//  Cell.swift
//  LOGIN
//
//  Created by Jorge Pachón Sánchez on 21/3/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet var lblnombre:UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
