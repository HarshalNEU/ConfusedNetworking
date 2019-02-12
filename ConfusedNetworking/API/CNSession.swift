//
//  CNSession.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation

public class CNSession:CNSessionInterface {
    
    func launchRequestWith(url: String, type: CNRequestType, tag: Int) {
        //use delegets for request and response
    }
    
    func makeRequest(_ request: CNRequest, tag: Int) {
        //use delegets for response only
    }
    
    func launchRequestWith(url: String, type: CNRequestType, completionHandler: @escaping (URLResponse, [String : Any], Error) -> ()) {
        //use closure for response and delegates for request
    }
    
    func makeRequest(_ request: CNRequest, completionHandler: @escaping (URLResponse, [String : Any], Error) -> ()) {
        //use closure for response
    }
    
}
