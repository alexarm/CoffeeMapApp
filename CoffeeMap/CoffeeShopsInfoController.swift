//
//  NetworkController.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 30.06.2021.
//

import Foundation
import UIKit

class CoffeeShopsInfoController {
    let requestUrl = "https://coffee-map-app.herokuapp.com/coffeeShops"
    static var coffeeShops = [CoffeeShop]()
    
    func fetchCoffeeShopsInfo(completion: @escaping (Result<[CoffeeShop],  Error>) -> Void) {
        guard let url = URL(string: requestUrl) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data {
                do {
                    let shopsInfo = try jsonDecoder.decode(Shops.self, from: data)
                    CoffeeShopsInfoController.coffeeShops = shopsInfo.coffeeShops
                    print(shopsInfo.coffeeShops.count)
                    completion(.success(shopsInfo.coffeeShops))
                } catch {
                    completion(.failure(error))
                }
            } else if let error = error {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    func fetchImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data, let image = UIImage(data: data) {
                completion(image)
            } else {
                completion(nil)
            }
        }
        
        task.resume()
    }
}
