//
//  OWNMockRequester.swift
//  OWNetwork
//
//  Created by Diego Faria on 18/01/21.
//

import UIKit

class OWNMockRequester: OWNRequester {
    func requestWith(url: String, method: String, parameters: [String: Any]?, header: [String: String]?, completion: @escaping OWNRequesterCompletion) {
        let base = OWNBaseStruct(with: url)
        do {
            let info = try base.getLocalJson()
            let response = OWNetworkResponse(data: info, error: nil, statusCode: 200)
            completion(response)
        } catch {
            let response = OWNetworkResponse(data: nil, error: error, statusCode: 200)
            completion(response)
        }
    }
}
