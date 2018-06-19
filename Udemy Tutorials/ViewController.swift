//
//  ViewController.swift
//  Udemy Tutorials
//
//  Created by Gayan Denaindra Perera on 6/18/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    
    
    private var count=0;
    private var randomNumner=0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.adjustsFontSizeToFitWidth=true
        userButton.layer.cornerRadius=10
        // Do any additional setup after loading the view, typically from a nib.
        
        randomNumner=Int(arc4random_uniform(101))
        countLabel.text="Move slider to \(randomNumner)";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func displayCount(_ sender: Any) {
         var sliderValue=Int(slider.value);
        if(sliderValue==randomNumner)
        {
            let matche = UIAlertController(title: "Congrates", message: "it's matche", preferredStyle: UIAlertControllerStyle.alert)
            matche.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(matche, animated: true, completion:nil)
        }
        else{
            
            let notmatch = UIAlertController(title: "Sorry", message: "it's not matche", preferredStyle: UIAlertControllerStyle.alert)
            notmatch.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(notmatch, animated: true, completion: nil)
        }
    }
    
    @IBAction func sliderChnaged(_ sender: Any) {
      
       
    }
}

