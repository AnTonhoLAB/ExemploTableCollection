//
//  AppDelegate.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        var o = DBRequests()
       
        
        o.request(.allObjects, Person()) { (obj, err) in
            
        }
        
        o.request(.allObjects, [PersonGroup]()) { (response, err) in
            
            if let response = response{
                for groups in response{
                    if let groupName = groups.groupName{
                        
                        print(groupName)
                    }
                }
            }
        }
        
        return true
    }

}

