//
//  ViewController.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var personsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personsTableView.dataSource = self
        personsTableView.delegate = self
        
        personsTableView.rowHeight = UITableViewAutomaticDimension
        personsTableView.estimatedRowHeight = 140
    }

}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.sharedInstance.getPersonsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pCell = tableView.dequeueReusableCell(withIdentifier: "PersonTableCell", for: indexPath) as! PersonTableCell
        pCell.person = DataManager.sharedInstance.getPersons()[indexPath.row]
        pCell.update()
        return pCell
    }
}

