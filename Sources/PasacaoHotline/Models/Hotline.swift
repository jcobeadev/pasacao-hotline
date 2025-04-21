//
//  Hotline.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/21/25.
//

import Foundation

struct Hotline: Codable, Identifiable, Hashable {
    let id: Int?
//    var createdAt: Date?
    let name: String
    let mobile: [String]?
    let phone: [String]?
    let radio: String?
    let imageUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case mobile
        case phone
        case radio
        case imageUrl = "image_url"
    }

}
