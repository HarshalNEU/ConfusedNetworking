//
//  CNRequest.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation


struct CNRequest {
    
    var url:URL
    var requestType:CNRequestType
    var headers:[String:String]?
    var queryParam:[String:Any]?
    var requestBody:[String:Any]?
    
    init(url:URL, requestType:CNRequestType) {
        self.url = url
        self.requestType = requestType
    }
    init(url:URL, requestType:CNRequestType, headers: [String:String]?, requestBody:[String:Any]?) {
        self.url = url
        self.requestType = requestType
    }
    init(url:URL, requestType:CNRequestType, headers: [String:String]?, queryParam:[String:Any]?) {
        self.url = url
        self.requestType = requestType
    }
    init(url:URL, requestType:CNRequestType, headers: [String:String]?, queryParam:[String:Any]?, requestBody:[String:Any]?) {
        self.url = url
        self.requestType = requestType
    }
}
