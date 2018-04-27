//
//  ILoaded.swift
//  StackOverflow
//
//  Created by George Gomes on 26/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import Foundation

protocol LoadingDelegate {
    func loadFinished()
    func fail()
}
