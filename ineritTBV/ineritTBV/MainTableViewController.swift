//
//  MainTableViewController.swift
//  ineritTBV
//
//  Created by Sitthorn Ch on 9/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

enum ListCellType: Int{
    case type1
    case type2
}
//Mother class
class MainTableViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    var tableView: UITableView?{
        didSet{
            //When `tableView` did set check that it has value
            guard let tableView = tableView else {
                return
            }
            //then register all nib file
            registerAllNibs(tableView: tableView)
        }
    }
    var displayListType: ListCellType = .type1 {
        didSet{
            tableView?.reloadData()
        }
    }
    let text1 = ["AFW1","ADS2","ACS2"]
    let text2 = ["B2R3","B3DA","ADF3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func registerAllNibs(tableView: UITableView){
        //Type1
        let nib = UINib(nibName: "Cell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        
        //Type2
        let nib2 = UINib(nibName: "Cell2", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "Cell2")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  displayListType == .type1 ? text1.count : text2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch displayListType {
        case .type1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as? Cell else {
                return UITableViewCell()
            }
            cell.custom(textlabell1: text1[indexPath.row], textlabell2: text1[indexPath.row])
            return cell
        case .type2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2",for: indexPath) as? Cell else {
                return UITableViewCell()
            }
            cell.custom(textlabell1: text2[indexPath.row], textlabell2: text2[indexPath.row])
            return cell
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOn(indexPath: indexPath)
    }
    
    //For child to overide when want action when user tap on cell
    func didTapOn(indexPath: IndexPath){
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
