//
//  OWNServerRequesterTests.swift
//  OWNetworkTests
//
//  Created by Diego Faria on 26/08/21.
//

import XCTest
@testable import OWNetwork

class OWNServerRequesterTests: XCTestCase {
    let requester = OWNServerRequester()

    func testServerRequester() {
        requester.requestWith(url: "http://videirasp.overwater.com.br/json/programacao", method: "GET", parameters: nil, header: nil) { response in
            XCTAssertNotNil(response)
        }
    }
    
    func testServerRequestReturnData() {
        requester.requestWith(url: "http://videirasp.overwater.com.br/json/programacao", method: "GET", parameters: nil, header: nil) { response in
            XCTAssertEqual(response.statusCode, 200)
            XCTAssertNotNil(response.data)
            XCTAssertNil(response.error)
        }
    }
    
    func testServerRequestReturnError() {
        requester.requestWith(url: "http://videirasp.overwater.com.br/json/programacao", method: "GET", parameters: nil, header: nil) { response in
            XCTAssertNotEqual(response.statusCode, 200)
            XCTAssertNotNil(response.error)
            XCTAssertNil(response.data)
        }
    }
    
}
