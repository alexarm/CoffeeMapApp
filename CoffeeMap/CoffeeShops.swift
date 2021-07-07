//
//  CoffeeShops.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 08.04.2021.
//

import Foundation


struct CoffeeShop: Codable {
    var name: String
    var location: [Float]
    var address: String
    var image: String
    var instagram: String
    var description: String
    var discount: String
    var toGo: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case location
        case address = "adress"
        case image
        case instagram
        case description
        case discount
        case toGo = "togo"
    }
}

struct Shops: Codable {
    var coffeeShops: [CoffeeShop]
}
