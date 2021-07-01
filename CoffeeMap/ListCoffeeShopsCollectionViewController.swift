//
//  ListCoffeeShopsCollectionViewController.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 24.06.2021.
//

import UIKit

private let reuseIdentifier = "CoffeeShop"

class ListCoffeeShopsCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CoffeeShopsInfoController.coffeeShops.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> CoffeeShopCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CoffeeShopCollectionViewCell
        
        let coffeeShop = CoffeeShopsInfoController.coffeeShops[indexPath.item]
        cell.setupCell(coffeeShop: coffeeShop)
    
        return cell
    }

}
