//
//  CollectionViewController.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController{

    @IBOutlet weak var groupCollectionView: UICollectionView!
    var groupProvider: GroupProvider!
    
    override func viewDidLoad() {
        groupProvider = GroupProvider()
        self.groupProvider.delegate = self
        
        self.groupCollectionView.dataSource = self
        self.groupCollectionView.delegate = self
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let TableviewController = segue.destination as! TableViewController
        
        TableviewController.group = sender as! PersonGroup
    }
}

extension CollectionViewController: LoadingDelegate{
    func loadFinished() {
        DispatchQueue.main.async {
            self.groupCollectionView.reloadData()
        }
    }
    func fail() {
        
    }
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier:"toTableView" , sender: groupProvider.getGroup(with: indexPath.row))
    }
}

