//
//  ViewController.swift
//  ineritTBV
//
//  Created by Guide on 6/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class ViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{

        @IBOutlet weak var tbv: UITableView!
    
        let text1 = ["AFW1","ADS2","ACS2"]
        let text2 = ["B2R3","B3DA","ADF3"]
    
        override func viewDidLoad() {
            super.viewDidLoad()
            let nib = UINib(nibName: "Cell", bundle: nil)
            tbv.register(nib, forCellReuseIdentifier: "Cell")
//            tbv.register(Cell.self, forCellReuseIdentifier: "Cell")
        }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return text1.count
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! Cell
            cell.custom(textlabell1: text1[indexPath.row], textlabell2: text2[indexPath.row])
            return cell
        }
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
}

