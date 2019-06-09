//
//  FirstTableViewController.swift
//  ineritTBV
//
//  Created by Guide on 6/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class FirstTableViewController : MainTableViewController{

    @IBOutlet weak var table: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            super.tableView = table
            super.displayListType = .type1
        }
    override func didTapOn(indexPath: IndexPath) {
        performSegue(withIdentifier: "toNextPage", sender: self)
    }
    
}
