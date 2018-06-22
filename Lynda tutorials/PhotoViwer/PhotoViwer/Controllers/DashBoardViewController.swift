//
//  DashBoardViewController.swift
//  PhotoViwer
//
//  Created by Gayan Denaindra Perera on 6/21/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var photos = [Photo]()
    //private var selectedIndex = (Int)()
    
    @IBOutlet weak var itemList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var photoSever = Photo(name: "emeraldbay", photo: "emeraldbay.png", notice: "xzxzx")
        photos.append(photoSever)
        
        photoSever = Photo(name: "joshuatree", photo: "joshuatree.png", notice: "xzxzx")
        photos.append(photoSever)
        
        photoSever = Photo(name: "redrock", photo: "redrock.png", notice: "xzxzx")
        photos.append(photoSever)
        
        photoSever = Photo(name: "snowman", photo: "snowman.png", notice: "xzxzx")
        photos.append(photoSever)
        
        photoSever = Photo(name: "sunset", photo: "sunset.png", notice: "xzxzx")
        photos.append(photoSever)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return photos.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc : ImageViewController = segue.destination as! ImageViewController
        vc.currentPhoto = photos[(itemList.indexPathForSelectedRow?.section)!]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.textLabel?.text =  photos[indexPath.section].name.uppercased()
        return cell
    }
    
    
    
}















