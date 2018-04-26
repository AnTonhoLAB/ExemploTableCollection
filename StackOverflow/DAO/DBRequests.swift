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

class DBRequests {
    
    let domain = "http://demo7120007.mockable.io/"
    
    let url = URL(string: "http://www.stackoverflow.com")
    
    func request <T>(_ requestType: RequestType, _ objct: T, completion: @escaping (T?, Error?) -> Void) where T: Decodable{
    
        let url =  URL(string: domain + requestType.rawValue)
        
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
