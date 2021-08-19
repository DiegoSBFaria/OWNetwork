//
//  OWNBundle+Extension.swift
//  OWNetwork
//
//  Created by Diego Faria on 16/07/21.
//

import UIKit

extension Bundle {
    static func networkBundle() -> Bundle? {
        guard let bundleURL = Bundle(for: OWNMockRequester.self).url(forResource: "OWNetwork", withExtension: "bundle") else {
            return Bundle(for: OWNMockRequester.self)
        }
        return Bundle(url: bundleURL)
    }
}
