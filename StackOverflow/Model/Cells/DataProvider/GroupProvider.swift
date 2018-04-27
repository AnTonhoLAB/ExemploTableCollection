//
//  GroupProvider.swift
//  StackOverflow
//
//  Created by George Gomes on 26/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import Foundation

class GroupProvider{
    
    var delegate: LoadingDelegate?
    private var dbRequest: DBRequests!
 
    init(){
        self.dbRequest = DBRequests()
        reload()
    }
    
    private var groups: [PersonGroup] = [PersonGroup](){
        didSet{
            delegate?.loadFinished()
        }
    }
   
    func groupCount() -> Int{
        return self.groups.count
    }
    
    func getGroup(with row: Int) -> PersonGroup{
        return groups[row]
    }
    
    func reload(){
        dbRequest.request(.allObjects, [PersonGroup]()) { (personGroups, err) in
            if (err == nil){
                if let personGroups = personGroups{
                    self.groups = personGroups
                    print("MUDOU", personGroups.count)
                }
            }
        }
    }
}
