//
//  HelloRouter.swift
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

@objc protocol HelloRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol HelloDataPassing {
    var dataStore: HelloDataStore? { get }
}

class HelloRouter: NSObject, HelloRoutingLogic, HelloDataPassing {
    weak var viewController: HelloViewController?
    var dataStore: HelloDataStore?
    
    // MARK: Routing
    
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}
    
    // MARK: Navigation
    
    //func navigateToSomewhere(source: HelloViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: HelloDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
