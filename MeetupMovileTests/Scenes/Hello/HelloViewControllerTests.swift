//
//  HelloViewControllerTests.swift
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

class HelloViewControllerTests: XCTestCase {
    // MARK: Subject under test
    
    var sut: HelloViewController!
    var window: UIWindow!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        window = UIWindow()
        setupHelloViewController()
    }
    
    override func tearDown() {
        window = nil
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setupHelloViewController() {
        sut = HelloViewController()
    }
    
    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }
    
    // MARK: Test doubles
    
    class HelloInteractorInputSpy: HelloInteractorInput {
        var doSomethingCalled = false
        
        func doSomething(request: Hello.Something.Request) {
            doSomethingCalled = true
        }
    }
    
    // MARK: Tests
    
    func testShouldDoSomethingWhenViewIsLoaded() {
        // Given
        let spy = HelloInteractorInputSpy()
        sut.interactor = spy
        
        // When
        loadView()
        
        // Then
        XCTAssertTrue(spy.doSomethingCalled, "viewDidLoad() should ask the interactor to do something")
    }
    
    func testDisplaySomething() {
        // Given
        let viewModel = Hello.Something.ViewModel(fullName: "Yasmin Benatti")
        
        // When
        loadView()
        sut.displaySuccess(viewModel: viewModel)
        
        // Then
        XCTAssertEqual(sut.nameTextField.text, "Yasmin Benatti", "displaySomething(viewModel:) should update the name text field")
    }
}