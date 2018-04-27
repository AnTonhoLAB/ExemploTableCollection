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
    
    func update(){
        self.lbName.text = self.group.groupName
    }
}
