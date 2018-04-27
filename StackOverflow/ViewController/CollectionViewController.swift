//
//  CollectionViewController.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, LoadingDelegate{

    
    
    @IBOutlet weak var personCollectionView: UICollectionView!
    var groupProvider: GroupProvider!
    
    override func viewDidLoad() {
        groupProvider = GroupProvider()
        self.groupProvider.delegate = self
        
        self.personCollectionView.dataSource = self
        self.personCollectionView.delegate = self
        
    }
    
    func loadFinished() {
        DispatchQueue.main.async {
            self.personCollectionView.reloadData()
        }
    }
    
    func fail() {
        
    }

}

extension CollectionViewController{
   
}

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groupProvider.groupCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let pCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as! GroupCollectionCell
        pCell.group = groupProvider.getGroup(with: indexPath.row)
        pCell.update()
        
        return pCell
    }
}

