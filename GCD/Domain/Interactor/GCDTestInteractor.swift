//
//  GCDTestInteractor.swift
//  GCD
//
//  Created by Ivan Peña on 3/16/19.
//  Copyright (c) 2019 Multiplica. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol GCDTestBusinessLogic
{
    func gcdTest()
}

protocol GCDTestDataStore
{
  //var name: String { get set }
}

class GCDTestInteractor: GCDTestBusinessLogic, GCDTestDataStore
{
    var presenter: GCDTestPresentationLogic?
    var worker: GCDTestWorker?
    
    func gcdTest() {
        
        DispatchQueue.global(qos: .background).async {
            for i in 0...10000{
                print("Background\(i)")
            }
        }
        
        DispatchQueue.global(qos: .utility).async {
            for i in 0...10000{
                print("Utility\(i)")
            }
        }
    }

}
