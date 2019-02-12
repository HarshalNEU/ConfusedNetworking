//
//  CNRequestEncoder.swift
//  ConfusedNetworking
//
//  Created by Harshal Neelkamal on 2/12/19.
//  Copyright © 2019 BrightApps. All rights reserved.
//

import Foundation

protocol CNRequestEncoder {
    associatedtype ParameterTypes
    static func encodeRequest(request: inout URLRequest, withParameters parameters: ParameterTypes)
}
