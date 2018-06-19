//
//  ItemViewController.swift
//  ListView
//
//  Created by Gayan Denaindra Perera on 6/19/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    
    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var itemCount: UILabel!
    
     var Name = ""
     var Count = ""
     var Image = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.itemCount.text=Count
        self.itemName.text=Name
        self.itemImage.image=UIImage(named: self.Image)
      
    }

    @IBAction func Dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}
