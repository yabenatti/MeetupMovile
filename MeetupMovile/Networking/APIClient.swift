//
//  APIClient.swift
//  MeetupMovile
//
//  Created by Yasmin Benatti on 16/10/18.
//  Copyright © 2018 Yasmin Benatti. All rights reserved.
//

import Foundation

final class APIClient: APIClientProtocol {
    func request(onSuccess: () -> Void, onFailure: () -> Void) {
        onSuccess()
    }
    
    func addHeader() {
        // Code
    }
    
    func removeHeader() {
        // Code
    }
    
    func handleError(error: Error?) {
        // Code
    }
}
