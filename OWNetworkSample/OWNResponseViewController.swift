//
//  OWNResponseViewController.swift
//  OWNetworkSample
//
//  Created by Diego Faria on 28/08/21.
//

import UIKit

class OWNResponseViewController: UIViewController {

    @IBOutlet weak var responseText: UITextView!
    public var response: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        responseText.text = response
    }

}
