//
//  CNNetworkingHeaderEncoder.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation

class CNNetworkingHeaderEncoder:CNRequestEncoder{
    typealias ParameterTypes = [String:String]
    
    static func encodeRequest(request: inout URLRequest, withParameters parameters: [String : String]) {
        
        for (key,value) in parameters {
            request.addValue(value, forHTTPHeaderField: key)
        }
        
    }
}
