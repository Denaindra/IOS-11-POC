//
//  TableViewController.swift
//  ListViewCollapsableExpandable
//
//  Created by Gayan Denaindra Perera on 6/20/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

struct cellTempData {
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
}


class TableViewController: UITableViewController {
    
    
    
    private var tableViewData = [cellTempData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableViewData = [cellTempData(opened: false, title: "Title1", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellTempData(opened: false, title: "Title1", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellTempData(opened: false, title: "Title1", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellTempData(opened: false, title: "Title1", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellTempData(opened: false, title: "Title1", sectionData: ["Cell 1","Cell 2","Cell 3"])]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened == true
        {
            return tableViewData[section].sectionData.count
        }
        else{
            return 1
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
                return UITableViewCell()
            }
            cell.textLabel?.text=tableViewData[indexPath.section].title
            return cell;
        }
        else{
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
                return UITableViewCell()
            }
            cell.textLabel?.text=tableViewData[indexPath.section].sectionData[indexPath.row - 1]
            return cell;
            
        }
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableViewData[indexPath.section].opened == true {
            tableViewData[indexPath.section].opened = false
            let section = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(section, with: .none)
        }
        else{
            tableViewData[indexPath.section].opened = true
            let section = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(section, with: .none)
        }
    }
    
  
}
