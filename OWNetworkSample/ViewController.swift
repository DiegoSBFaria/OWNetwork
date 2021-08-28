//
//  ViewController.swift
//  OWNetworkSample
//
//  Created by Diego Faria on 16/07/21.
//

import UIKit
import OWNetwork

class ViewController: UIViewController {
    private var response: String = ""
    
    @IBAction func request(_ sender: UIButton) {
        
        let network = OWNetwork()
        network.requestWith(url: "http://videirasp.overwater.com.br/json/programacao", method: "GET", parameters: nil, header: nil) { response in
            if let data = response.data ,
               let responseText = String(data: data, encoding: .utf8){
                self.response = responseText
            }
            self.performSegue(withIdentifier: "response", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? OWNResponseViewController {
            vc.response = response
        }
    }

}

