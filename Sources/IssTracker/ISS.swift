//
//  File.swift
//  
//
//  Created by Rusty Shackleford on 10/8/23.
//

import Foundation

struct ISS: Codable {
    let timestamp: Int
    let message: String
    let position: IssPosition

    enum CodingKeys: String, CodingKey {
        case timestamp, message
        case position = "iss_position"
    }
}

// MARK: - IssPosition
struct IssPosition: Codable {
    let latitude, longitude: String
}
