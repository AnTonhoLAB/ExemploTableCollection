//
//  DBRequests.swift
//  StackOverflow
//
//  Created by George Gomes on 26/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import Foundation

enum RequestType: String{
    case allObjects = "CompleteGroups"
    case GpInformations = "GroupInformations"
}

enum RequestPredicate: String{
    case desc = "desc"
    case nul = ""
}

class DBRequests {
    
    let domain = "http://demo7120007.mockable.io/"
    
    func request <T>(_ requestType: RequestType, _ objct: T,_ predicate: RequestPredicate? = .nul, completion: @escaping (T?, Error?) -> Void) where T: Decodable{
    
        let url =  URL(string: domain + requestType.rawValue + predicate!.rawValue)
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
        
            do {
                if let data = data{
                    let decodeObject = try JSONDecoder().decode(T.self, from: data)
    
                    completion(decodeObject, nil)
                }
            }catch{
                completion(nil, error)
            }
        }
        task.resume()
    }
}
