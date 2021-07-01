//
//  NetworkController.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 30.06.2021.
//

import Foundation

class CoffeeShopsInfoController {
    let requestUrl = "https://coffee-map-app.herokuapp.com/coffeeShops"
    static var coffeeShops = [CoffeeShop]()
    
    func fetchCoffeeShopsInfo() {
        guard let url = URL(string: requestUrl) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data {
                do {
                    let shopsInfo = try jsonDecoder.decode(Shops.self, from: data)
                    print("good")
                    CoffeeShopsInfoController.coffeeShops = shopsInfo.coffeeShops
                    print(shopsInfo.coffeeShops.count)
                } catch {
                    print("fuck")
                    return
                }
            } else if let error = error {
                print(error)
                return
            }
        }
        
        task.resume()
    }
}
