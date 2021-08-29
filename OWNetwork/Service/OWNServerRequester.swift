//
//  OWNServerRequester.swift
//  OWNetwork
//
//  Created by Diego Faria on 16/07/21.
//

import UIKit 

class OWNServerRequester: OWNRequester {
    func requestWith(url: String, method: String, parameters: [String: Any]?, header: [String: String]?, completion: @escaping OWNRequesterCompletion) {
        guard let url = URL(string: url) else {
            let response = OWNetworkResponse(data: nil, error: OWNErrors.URLFormatError, statusCode: 200)
            completion(response)
            return
        }
        let request = createRequest(url: url, method: method, parameters: parameters, header: header)
        startRequest(request: request, completion: completion)
    }
    
    private func createRequest(url: URL, method: String, parameters: [String: Any]?, header: [String: String]?) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method
        if let headers = header {
            for h in headers {
                request.addValue(h.value, forHTTPHeaderField: h.key)
            }
        }
        request.httpBody = setParameters(parameters: parameters)
        return request
    }
    
    private func setParameters(parameters: [String: Any]?) -> Data? {
        if let param = parameters,
           let jsonData = try? JSONSerialization.data(withJSONObject: param, options: .prettyPrinted) {
            return jsonData
        }
        return nil
    }

    private func startRequest(request: URLRequest, completion: @escaping OWNRequesterCompletion) {
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                guard let responseHttp = response as? HTTPURLResponse else {
                    let response = OWNetworkResponse(data: nil, error: error, statusCode: -200)
                    completion(response)
                    return
                }
                
                let networkResponse = OWNetworkResponse(data: data, error: error, statusCode: responseHttp.statusCode)
                completion(networkResponse)
            }
        }.resume()
    }
}
