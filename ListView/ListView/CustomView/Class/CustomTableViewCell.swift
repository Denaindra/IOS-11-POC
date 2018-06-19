//
//  CustomTableViewCell.swift
//  ListView
//
//  Created by Gayan Denaindra Perera on 6/19/18.
//  Copyright © 2018 Gayan Denaindra Perera. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellItemName: UILabel!
    @IBOutlet weak var cellItemCount: UILabel!
    
    private var fruitsImg=["apple.png","banana.png","orange.png"]
    private var fruitsName=["Apple","Orange","Banana"]
    private var fruitCount=[3,2,1]
    
    
    
    
    func GetFruitName(index:Int) -> String {
        return fruitsName[index]
    }
    
    func GetFruitCount(index:Int) -> String {
        var Count=fruitCount[index]
        return String(Count)
    }
    
    func GetFruitImage(index:Int) -> String {
        return fruitsImg[index]
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}















