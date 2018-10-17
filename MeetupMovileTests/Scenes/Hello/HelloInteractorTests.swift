//
//  HelloInteractorTests.swift
//  MeetupMovile
//
//  Created by Yasmin Benatti on 16/10/18.
//  Copyright (c) 2018 Yasmin Benatti. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import MeetupMovile
import XCTest
import Nimble

class HelloInteractorTests: XCTestCase {
    // MARK: Subject under test
    
    var sut: HelloInteractor!
    var apiClient: APIClientMock!

    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        setupHelloInteractor()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setupHelloInteractor() {
        apiClient = APIClientMock()
        sut = HelloInteractor(apiClient: apiClient)
    }
    
    // MARK: Test doubles
    
    class HelloPresenterInputSpy: HelloPresenterInput {
        var presentSuccessCalled = false
        var presentErrorCalled = false
        
        
        func presentSuccess(response: Hello.Something.Response) {
            presentSuccessCalled = true
        }
        
        func presentError(errorResponse: Hello.Something.ErrorResponse) {
            presentErrorCalled = true
        }
    }
    
    // MARK: Tests
    
    func testDoSomething() {
        // Given
        let spy = HelloPresenterInputSpy()
        sut.presenter = spy
        let request = Hello.Something.Request()
        
        // When
        self.sut.doSomething(request: request)
        
        // Then
        
        // Nimble
        expect(spy.presentSuccessCalled).toEventually(beTrue())
    }
}
