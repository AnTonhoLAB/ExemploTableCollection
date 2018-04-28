//
//  DBRequests.swift
//  StackOverflow
//
//  Created by George Gomes on 26/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import Foundation

enum RequestType: String{
    case groups = "groups"
    case nul = ""
}

enum RequestPredicate: String{
    case nul = ""
}

class DBRequests {
    
    let domain = "http://demo7120007.mockable.io/"
    
    func request <T>(_ withName: String? = "" ,_ requestType: RequestType? = .nul , _ objct: T,_ predicate: RequestPredicate? = .nul, completion: @escaping (T?, Error?) -> Void) where T: Decodable{
    
        let url =  URL(string: domain + withName! + requestType!.rawValue + predicate!.rawValue)
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
        
            do {
                if let data = data{
                    let decodeObject = try JSONDecoder().decode(T.self, from: data)
    
                    completion(decodeObject, nil)
                }
            }catch{
                print(error)
                completion(nil, error)
            }
        }
        task.resume()
    }
}
