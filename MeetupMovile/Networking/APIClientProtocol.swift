//
//  APIClientProtocol.swift
//  MeetupMovile
//
//  Created by Yasmin Benatti on 16/10/18.
//  Copyright © 2018 Yasmin Benatti. All rights reserved.
//

import Foundation

protocol APIClientProtocol {
    func request(onSuccess: () -> Void, onFailure: () -> Void)
    func addHeader()
    func removeHeader()
    func handleError(error: Error?)
}
