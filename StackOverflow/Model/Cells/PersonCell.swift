//
//  PersonTableCell.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

class PersonTableCell: UITableViewCell{
    
    var person: Person!
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    func update(){
        self.lbName.text = self.person.name
        self.lbDescription.text = self.person.description
    }
}
