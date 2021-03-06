//
//  HelloWorker.swift
//  MeetupMovile
//
//  Created by Yasmin Benatti on 2018-10-15.
//  Copyright (c) 2018 Yasmin Benatti. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class HelloWorker {
    let apiClient: APIClientProtocol
    
    init(apiClient: APIClientProtocol) {
        self.apiClient = apiClient
    }
    
    func doSomeWork(successHandler: @escaping(_ firstName: String, _ lastName: String) -> Void, failureHandler: (_ error: Error?) -> Void) {
        apiClient.request(onSuccess: {
            successHandler("yasmin", "benatti")
        }) {
            failureHandler(nil)
        }
    }
}
