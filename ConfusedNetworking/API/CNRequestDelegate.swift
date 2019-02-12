//
//  CNRequestDelegate.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation


@objc public protocol CNRequestDelegate {
    @objc optional func bodyForRequestWith(id:Int) -> [String:Any]?
    @objc optional func queryParamsForRequestWith(id: Int) -> [String:Any]?
    @objc optional func customHeadersForRequestWith(id: Int) -> [String:String]?
    func responseForRequestWith(id: Int, response: URLResponse, json: [String:Any], error: Error)
}
