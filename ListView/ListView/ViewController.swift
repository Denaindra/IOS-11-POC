//
//  ViewController.swift
//  ListView
//
//  Created by Gayan Denaindra Perera on 6/18/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableVIew: UITableView!
    private var selectedIndext=0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableVIew.register(UINib(nibName: "CustomTableViewCell", bundle:nil), forCellReuseIdentifier: "custom")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : CustomTableViewCell = getCurrentTable()
        cell.cellItemCount.text=cell.GetFruitCount(index: indexPath.row)
        cell.cellItemName.text=cell.GetFruitName(index: indexPath.row)
        cell.cellImage.image=UIImage(named: cell.GetFruitImage(index: indexPath.row))
        return cell;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        selectedIndext=indexPath.row
       performSegue(withIdentifier: "item", sender: self)
    }
    func getCurrentTable() -> CustomTableViewCell {
        return tableVIew.dequeueReusableCell(withIdentifier: "custom") as! CustomTableViewCell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let cell : CustomTableViewCell = getCurrentTable()
        let vc : ItemViewController = segue.destination as! ItemViewController
        vc.Count=cell.GetFruitCount(index:selectedIndext)
        vc.Image=cell.GetFruitImage(index:selectedIndext)
        vc.Name=cell.GetFruitName(index:selectedIndext)
    }
    
}















