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
    var headers:[String:String]
    var queryParam:[String:Any]
    var requestBody:[String:Any]
    
}
