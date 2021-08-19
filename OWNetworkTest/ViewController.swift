//
//  ViewController.swift
//  OWNetworkTest
//
//  Created by Diego Faria on 16/07/21.
//

import UIKit
import OWNetwork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let network = OWNetwork()
        network.requestWith(url: "http://videirasp.overwater.com.br/json/programacao", method: "GET", parameters: nil, header: nil) { response in
            print(response)
            print(String(data: response.data!, encoding: .utf8))
        }
    }


}

