//
//  OWNetworkResponse.swift
//  OWNetwork
//
//  Created by Diego Faria on 10/08/21.
//

import UIKit

public struct OWNetworkResponse {
    public let data: Data?
    public let error: Error?
    public let statusCode: Int
}
