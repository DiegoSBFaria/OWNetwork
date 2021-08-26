//
//  OWNetworkTests.swift
//  OWNetworkTests
//
//  Created by Diego Faria on 18/01/21.
//

import XCTest
@testable import OWNetwork

class OWNetworkTests: XCTestCase {
    
    let network = OWNetwork()
    
    func testRequest() {
        network.requestWith(url: "lista", method: "GET", parameters: nil, header: nil) { response in
            XCTAssertNotNil(response)
        }
    }
    
    func testRequestReturnData() {
        network.requestWith(url: "lista", method: "GET", parameters: nil, header: nil) { response in
            XCTAssertEqual(response.statusCode, 200)
            XCTAssertNotNil(response.data)
            XCTAssertNil(response.error)
        }
    }
    
    func testRequestReturnError() {
        network.requestWith(url: "listaNull", method: "GET", parameters: nil, header: nil) { response in
            XCTAssertNotEqual(response.statusCode, 200)
            XCTAssertNotNil(response.error)
            XCTAssertNil(response.data)
        }
    }
}
