//
//  PersonGroup.swift
//  StackOverflow
//
//  Created by George Gomes on 25/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import Foundation

struct PersonGroup: Decodable{
    
    var groupName: String!
    var integrants: [Person]?
    var numberIntegrants: Int?

}
