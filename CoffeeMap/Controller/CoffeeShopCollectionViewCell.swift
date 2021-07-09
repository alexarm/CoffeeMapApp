//
//  CoffeeShopCollectionViewCell.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 24.06.2021.
//

import UIKit

class CoffeeShopCollectionViewCell: UICollectionViewCell {
    
    let coffeeShopInfroController = CoffeeShopsInfoController()
    @IBOutlet var coffeeShopImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    func setupCell(coffeeShop: CoffeeShop) {
        self.layer.cornerRadius = 10
        coffeeShopImage.layer.cornerRadius = 10
        
        let imageUrl = coffeeShop.image
        let encodedString = imageUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let encodedUrl = URL(string: encodedString)!
        
        coffeeShopInfroController.fetchImage(from: encodedUrl) { image in
            let image = image ?? UIImage(systemName: "photo")

            DispatchQueue.main.async {
                self.coffeeShopImage.image = image
            }
        }
        
        titleLabel.text = coffeeShop.name
        addressLabel.text = coffeeShop.address
    }
    
}
