//
//  CVDataSource.swift
//  StackOverflow
//
//  Created by George Gomes on 26/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

//import UIKit
//
//class CVDataSource:NSObject, UICollectionViewDataSource, LoadingDelegate{
//
//
//
//    func loadFinished() {
//
//    }
//
//    func fail() {
//
//    }
//
//
//
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let pCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonCollectionCell", for: indexPath) as! PersonCollectionCell
//        pCell.person = DataManager.sharedInstance.getPersons()[indexPath.row]
//        pCell.update()
//
//        return pCell
//    }
//
//}
