//
//  NoticeViewController.swift
//  PhotoViwer
//
//  Created by Gayan Denaindra Perera on 6/21/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

class NoticeViewController: UIViewController {

    var currentPhoto : Photo?
    
    @IBOutlet weak var imageDetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDetails.text = currentPhoto?.notice
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func Dismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
  
}
