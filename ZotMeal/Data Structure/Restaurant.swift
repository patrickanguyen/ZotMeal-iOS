//
//  Restaurant.swift
//  ZotMeal 2
//
//  Created by Shengyuan Lu on 10/19/21.
//

import Foundation

struct Restaurant: Codable {
    let refreshTime: Date
    let restaurantName: String
    let allMenu: [Station]
    
    enum CodingKeys: String, CodingKey {
        case refreshTime
        case restaurantName = "restaurant"
        case allMenu = "all"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let unixTime = try container.decode(Int.self, forKey: .refreshTime)
        let all = try container.decode([Station].self, forKey: .allMenu)
        
        self.refreshTime = Date(timeIntervalSince1970: Double(unixTime))
        self.restaurantName = try container.decode(String.self, forKey: .restaurantName)
        self.allMenu = all
    }
}
