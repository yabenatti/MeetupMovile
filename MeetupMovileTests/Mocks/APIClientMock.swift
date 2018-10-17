//
//  APIClientMock.swift
//  MeetupMovileTests
//
//  Created by Yasmin Benatti on 16/10/18.
//  Copyright © 2018 Yasmin Benatti. All rights reserved.
//

import Foundation
@testable import MeetupMovile

final class APIClientMock: APIClientProtocol {
    var requestWasCalled = false
    var addHeaderWasCalled = false
    var removeHeaderWasCalled = false
    var handleErrorWasCalled = false
    
    func request() {
        requestWasCalled = true
    }
    
    func addHeader() {
        addHeaderWasCalled = true
    }
    
    func removeHeader() {
        removeHeaderWasCalled = true
    }
    
    func handleError(error: Error?) {
        handleErrorWasCalled = true
    }
}
