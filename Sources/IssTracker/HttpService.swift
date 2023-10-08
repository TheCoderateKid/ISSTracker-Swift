//
//  HttpService.swift
//  
//
//  Created by Rusty Shackleford on 10/8/23.
//

import Foundation

struct HttpService {
    let apiURL = "http://api.open-notify.org/iss-now"
    
    func findISS(completion: @escaping (Result<ISS, Error>) -> ()) {
        guard let url = URL(string: apiURL) else {
            completion(.failure(APIError.FAILURE))
            return
        }
        
        var request = URLRequest(url: url, timeoutInterval: .infinity)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                if let error = error {
                    completion(.failure(error))
                } else {
                    completion(.failure(APIError.FAILURE))
                }
                return
            }

            do {
                let iss = try JSONDecoder().decode(ISS.self, from: data)
                completion(.success(iss))
            } catch let error {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}


enum APIError: String, Error {
    case FAILURE
}
