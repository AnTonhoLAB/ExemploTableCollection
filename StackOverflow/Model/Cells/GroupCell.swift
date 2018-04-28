//
//  GroupCell.swift
//  StackOverflow
//
//  Created by George Gomes on 26/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

class GroupCollectionCell: UICollectionViewCell{
    
    var group: PersonGroup!
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbGroupQt: UILabel!
    
    func update(){
        
        var num = 0
        if let i = self.group.numberIntegrants {
            num = i
        }else{
            num = 0
        }
        
        self.lbName.text = self.group.groupName
        self.lbGroupQt.text = "\(num) integrantes"
    }
}
