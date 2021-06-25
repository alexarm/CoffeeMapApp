//
//  CoffeeShopCollectionViewCell.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 24.06.2021.
//

import UIKit

class CoffeeShopCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var coffeeShopImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    func setupCell(coffeeShop: CoffeeShop) {
        let imageUrl = coffeeShop.image
        let encodedString = imageUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        coffeeShopImage.load(url: URL(string: encodedString!)!)
        
        
        titleLabel.text = coffeeShop.name
        addressLabel.text = coffeeShop.adress
    }
    
}
