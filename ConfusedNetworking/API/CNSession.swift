//
//  CNSession.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation

public class CNSession:CNSessionInterface {
    
    var delegate:CNRequestDelegate?
    
    
    func launchRequestWith(url: String, type: CNRequestType, tag: Int) {
        //use delegets for request and response

        var req = URLRequest.init(url: URL.init(string: url)!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: TimeInterval.init(20))
        req.httpMethod = type.rawValue
        if let delegate = delegate, let call = delegate.bodyForRequestWith(tag:), let body = call(tag) {
            CNNetworkingJsonBodyEncoder.encodeRequest(request: &req, withParameters: body)
        }
        if let delegate = delegate, let call = delegate.queryParamsForRequestWith(tag: ), let query = call(tag) {
            CNNetworkingQueryParamEncoder.encodeRequest(request: &req, withParameters: query)
        }
        if let delegate = delegate, let call = delegate.customHeadersForRequestWith(tag: ), let headers = call(tag) {
            CNNetworkingHeaderEncoder.encodeRequest(request: &req, withParameters: headers)
        }
        URLSession.shared.dataTask(with: req, completionHandler: {
            (data, respose, error) in
            var json:[String:Any]? = nil
            if error == nil, let data = data {
                let serial = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                json = serial as? [String:Any]
            }
            self.delegate?.responseForRequestWith(id: tag, response: respose, json: json, error: error)
        })
        
    }
    
    func makeRequest(_ request: CNRequest, tag: Int) {
        
        var req = URLRequest.init(url: request.url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: TimeInterval.init(20))
        req.httpMethod = request.requestType.rawValue
        if let body = request.requestBody {
            CNNetworkingJsonBodyEncoder.encodeRequest(request: &req, withParameters: body)
        }
        if let query = request.queryParam {
            CNNetworkingQueryParamEncoder.encodeRequest(request: &req, withParameters: query)
        }
        if let headers = request.headers {
            CNNetworkingHeaderEncoder.encodeRequest(request: &req, withParameters: headers)
        }
        URLSession.shared.dataTask(with: req, completionHandler: {
            (data, respose, error) in
            var json:[String:Any]? = nil
            if error == nil, let data = data {
                let serial = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                json = serial as? [String:Any]
            }
            self.delegate?.responseForRequestWith(id: tag, response: respose, json: json, error: error)
        })
        
    }
    
    func launchRequestWith(url: String, type: CNRequestType, tag:Int, completionHandler: @escaping (URLResponse?, [String : Any]?, Error?) -> ()) {
        //use closure for response and delegates for request
        var req = URLRequest.init(url: URL.init(string: url)!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: TimeInterval.init(20))
        req.httpMethod = type.rawValue
        if let delegate = delegate, let call = delegate.bodyForRequestWith(tag:), let body = call(tag) {
            CNNetworkingJsonBodyEncoder.encodeRequest(request: &req, withParameters: body)
        }
        if let delegate = delegate, let call = delegate.queryParamsForRequestWith(tag: ), let query = call(tag) {
            CNNetworkingQueryParamEncoder.encodeRequest(request: &req, withParameters: query)
        }
        if let delegate = delegate, let call = delegate.customHeadersForRequestWith(tag: ), let headers = call(tag) {
            CNNetworkingHeaderEncoder.encodeRequest(request: &req, withParameters: headers)
        }
        URLSession.shared.dataTask(with: req, completionHandler: {
            (data, respose, error) in
            var json:[String:Any]? = nil
            if error == nil, let data = data {
                let serial = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                json = serial as? [String:Any]
            }
            completionHandler(respose, json, error)
        })
    }
    
    func makeRequest(_ request:CNRequest, completionHandler: @escaping (URLResponse?, [String:Any]?, Error?)->()) {
        
        var req = URLRequest.init(url: request.url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: TimeInterval.init(20))
        req.httpMethod = request.requestType.rawValue
        if let body = request.requestBody {
            CNNetworkingJsonBodyEncoder.encodeRequest(request: &req, withParameters: body)
        }
        if let query = request.queryParam {
            CNNetworkingQueryParamEncoder.encodeRequest(request: &req, withParameters: query)
        }
        if let headers = request.headers {
            CNNetworkingHeaderEncoder.encodeRequest(request: &req, withParameters: headers)
        }
        URLSession.shared.dataTask(with: req, completionHandler: {
            (data, respose, error) in
            var json:[String:Any]? = nil
            if error == nil, let data = data {
                let serial = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                json = serial as? [String:Any]
            }
            completionHandler(respose, json, error)
        })
        
    }
    
}
