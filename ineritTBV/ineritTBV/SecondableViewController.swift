//
//  SecondableViewController..swift
//  ineritTBV
//
//  Created by Guide on 7/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class SecondableViewController : MainTableViewController {
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.tableView = table
        super.displayListType = .type2
    }
    override func didTapOn(indexPath: IndexPath) {
        print(indexPath)
    }
}

