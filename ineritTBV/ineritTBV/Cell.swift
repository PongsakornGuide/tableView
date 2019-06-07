//
//  Cell.swift
//  ineritTBV
//
//  Created by Guide on 7/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var labelText1: UILabel!
    @IBOutlet weak var labelText2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func custom(textlabell1:String,textlabell2:String){
        self.labelText1.text = textlabell1
        self.labelText2.text = textlabell2
    }
    
}
