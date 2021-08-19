//
//  OWNLocalization.swift
//  OWNetwork
//
//  Created by Diego Faria on 18/01/21.
//

import UIKit

enum OWNLocalization {
    
    static func localize(_ key: String) -> String {
        var bundle = Bundle.main
        if let projectBundle = Bundle.networkBundle() {
            bundle = projectBundle
        }
        return NSLocalizedString(key, tableName: "Localizable", bundle: bundle, comment: "")
    }

}
