//
//  TableViewCell.swift
//  NamazBook
//
//  Created by shahzod on 4/4/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    
    
    @IBOutlet weak var TextLabel: UILabel!
    
    
    
    @IBOutlet weak var NamazImageLabel: UIImageView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }
    
}
