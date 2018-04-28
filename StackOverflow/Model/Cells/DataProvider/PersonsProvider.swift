//
//  PersonsProvider.swift
//  StackOverflow
//
//  Created by George Gomes on 27/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import Foundation

class PersonsProvider{
    
    var delegate: LoadingDelegate?
    private var dbRequest: DBRequests!
    private var groupName: String!
    
    init(_ fromGroup: String){
        self.dbRequest = DBRequests()
        self.groupName = fromGroup
        reload()
    }
    
    private var persons: [Person] = [Person](){
        didSet{
            delegate?.loadFinished()
        }
    }
    
    func personsCount() -> Int{
        return self.persons.count
    }
    
    func getPerson(with row: Int) -> Person{
        return self.persons[row]
    }
    
    func reload(){
        
        dbRequest.request(groupName.replacingOccurrences(of: " ", with: ""), .nul, [Person](), .nul) { (persons, err) in
            if (err == nil){
                if let persons = persons{
                    self.persons = persons
                }
            }else{
                self.delegate?.fail()
            }
        }
    }
}
