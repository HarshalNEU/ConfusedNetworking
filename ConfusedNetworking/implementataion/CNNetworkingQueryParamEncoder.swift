//
//  CNNetworkingQueryParamEncoder.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation

internal class CNNetworkingQueryParamEncoder:CNRequestEncoder{
    typealias ParameterTypes = [String:Any]
    
    static func encodeRequest(request: inout URLRequest, withParameters parameters: [String : Any]) {
        
        var component = URLComponents.init(url: request.url!, resolvingAgainstBaseURL: false)
        
       
        for (key,value) in parameters {
            let item = URLQueryItem.init(name: key, value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
            component?.queryItems?.append(item)
        }
        
        request.url = component?.url
        
        if request.value(forHTTPHeaderField: "Content-Type") == nil {
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        }
        
    }
}
