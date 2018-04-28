//
//  ViewController.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

class TableViewController: UIViewController{

    @IBOutlet weak var personsTableView: UITableView!
   
    var group: PersonGroup!
    var personProvider: PersonsProvider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.personProvider = PersonsProvider(group.groupName)
        self.personProvider.delegate = self
        
        personsTableView.dataSource = self
        personsTableView.delegate = self
        
        personsTableView.rowHeight = UITableViewAutomaticDimension
        personsTableView.estimatedRowHeight = 140
    }

}

extension TableViewController: LoadingDelegate{
   
    func loadFinished() {
        DispatchQueue.main.async {
            self.personsTableView.reloadData()
        }
    }
    
    func fail() {
        
    }
    
    
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personProvider.personsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pCell = tableView.dequeueReusableCell(withIdentifier: "PersonTableCell", for: indexPath) as! PersonTableCell
        pCell.person = personProvider.getPerson(with: indexPath.row)
        pCell.update()
        return pCell
    }
}

