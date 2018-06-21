//
//  ViewController.swift
//  Lynda tutorials
//
//  Created by Gayan Denaindra Perera on 6/13/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let charaters=["A","B","C","D","E","F","G"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var backgroundColor=UIColor()
        switch row {
        case 0:
            backgroundColor=UIColor.blue
        default:
            backgroundColor=UIColor.green
        }
        self.view.backgroundColor=backgroundColor;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return charaters.count;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return charaters[row];
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

