//
//  OWNRequester.swift
//  OWNetwork
//
//  Created by Diego Faria on 18/01/21.
//

import UIKit

typealias OWNRequesterCompletion = (OWNetworkResponse) -> Void

protocol OWNRequester {
    func requestWith(url: String, method: String, parameters: [String: Any]?, header: [String: String]?, completion: @escaping OWNRequesterCompletion)
}
