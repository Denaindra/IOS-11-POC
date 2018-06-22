//
//  ImageViewController.swift
//  PhotoViwer
//
//  Created by Gayan Denaindra Perera on 6/21/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var currentPhoto : Photo?
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: (self.currentPhoto?.photo)!)
        self.title = currentPhoto?.name.capitalized
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc : NoticeViewController = segue.destination as! NoticeViewController
        vc.currentPhoto = self.currentPhoto
    }
 

}
