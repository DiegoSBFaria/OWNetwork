//
//  OWNetwork.swift
//  OWNetwork
//
//  Created by Diego Faria on 10/08/21.
//

import UIKit

public typealias OWNetworkResult = (OWNetworkResponse) -> Void

public class OWNetwork: NSObject {
    private let unitTestConfiguration = "XCTestConfigurationFilePath"
    private var request: OWNRequester
    
    override public init() {
        request = OWNServerRequester()
        if ProcessInfo.processInfo.environment[unitTestConfiguration] != nil {
            request = OWNMockRequester()
        }
    }
    
    
    public func requestWith(url: String, method: String, parameters: [String: Any]?, header: [String: String]?, completion: @escaping OWNetworkResult) {
        request.requestWith(url: url, method: method, parameters: parameters, header: header) { response  in
            completion(response)
        }
    }
}
