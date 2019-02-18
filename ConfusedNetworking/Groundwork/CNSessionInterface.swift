//
//  CNSessionInterface.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation


internal protocol CNSessionInterface {
    func launchRequestWith(url:String, type:CNRequestType, tag:Int)
    func makeRequest(_ request:CNRequest, tag:Int)
    func launchRequestWith(url: String, type: CNRequestType, tag:Int, completionHandler: @escaping (URLResponse?, [String : Any]?, Error?) -> ())
    func makeRequest(_ request:CNRequest, completionHandler: @escaping (URLResponse?, [String:Any]?, Error?)->())
}
