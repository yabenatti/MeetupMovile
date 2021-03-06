//
//  HelloPresenter.swift
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

protocol HelloPresenterInput {
    func presentSuccess(response: Hello.Something.Response)
    func presentError(errorResponse: Hello.Something.ErrorResponse)
}

class HelloPresenter: HelloPresenterInput {
    weak var viewController: HelloViewControllerInput?
    
    // MARK: Do something
    
    func joinNamesAndCapitalizeIt(firstName: String, lastName: String) -> String {
        let fullName: String = firstName + " " + lastName
        return fullName.capitalized
    }
    
    func presentSuccess(response: Hello.Something.Response) {
        let fullName = joinNamesAndCapitalizeIt(firstName: response.firstName, lastName: response.lastName)
        let viewModel = Hello.Something.ViewModel(fullName: fullName)
        viewController?.displaySuccess(viewModel: viewModel)
    }
    
    func presentError(errorResponse: Hello.Something.ErrorResponse) {
        viewController?.displayError(errorResponse: errorResponse)
    }
}
