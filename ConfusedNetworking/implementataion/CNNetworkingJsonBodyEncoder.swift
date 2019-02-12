//
//  CNNetworkingJsonBodyEncoder.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation


class CNNetworkingJsonBodyEncoder:CNRequestEncoder{
    typealias ParameterTypes = [String:Any]
    
    static func encodeRequest(request: inout URLRequest, withParameters parameters: [String : Any]) {
        //encode Json
        
        do {
            
            let data = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            request.httpBody = data
            if((request.value(forHTTPHeaderField: "Content-Type")) == nil){
                request.addValue("application/json", forHTTPHeaderField: "Content-Type")
                request.addValue("application/json", forHTTPHeaderField: "Accept")
            }
            
        }catch{
            print(error)
            return
        }
    }
}
