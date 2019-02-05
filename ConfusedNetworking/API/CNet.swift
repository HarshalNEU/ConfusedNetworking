//
//  CNet.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/4/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation


public enum CRequestType {
    case GET, POST, DELETE, PUT, PATCH
}

public enum CParserType {
    case SWIFTY, CODABLE, DEFAULT
}

public class ConfusedRequest {
    
}

public class HttpRocket {
    
    let url:URL
    let requestType:CRequestType
    var parserType:CParserType?{
        get {
            if let parserType = self.parserType {
                return parserType
            }
            return CParserType.DEFAULT
        }
        set {
            self.parserType = newValue
        }
    }
    var queryParams:[String:Any]?{
        get {
            return self.queryParams
        }
        set {
            self.queryParams = newValue
        }
    }
    var headers:[String:String]? {
        get {
            return self.headers
        }
        set {
            self.headers = newValue
        }
    }
    var body:[String:Any]? {
        get {
            return self.body
        }
        set {
            self.body = newValue
        }
    }
    
    public init(url:URL, requestType:CRequestType){
        self.url = url
        self.requestType = requestType
    }
    
}

public class CNet {
    
    static let shared = CNet.init()
    
    private init() {
        
    }
    
    public func launchWith(rocket: HttpRocket, completion: @escaping (_ response:Data, _ error: Error)->()) -> Void {
        
        var urlRequest = URLRequest.init(url: rocket.url)
        
        urlRequest.addValue("", forHTTPHeaderField: "content-type")
        
        URLSession.shared.dataTask(with: urlRequest, completionHandler: {
            (data, response, error) in
            
            
            
        })
    }
}
