//
//  CollectionViewController.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController{
    
    @IBOutlet weak var personCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        
        self.personCollectionView.dataSource = self
        self.personCollectionView.delegate = self
        
    }
}

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataManager.sharedInstance.getPersonsCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let pCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonCollectionCell", for: indexPath) as! PersonCollectionCell
        pCell.person = DataManager.sharedInstance.getPersons()[indexPath.row]
        pCell.update()
        
        return pCell
    }
}

