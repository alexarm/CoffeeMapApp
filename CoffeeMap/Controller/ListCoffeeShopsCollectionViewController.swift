//
//  ListCoffeeShopsCollectionViewController.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 24.06.2021.
//

import UIKit

private let reuseIdentifier = "CoffeeShop"

class ListCoffeeShopsCollectionViewController: UICollectionViewController {
    
    @IBOutlet var flowLayout: UICollectionViewFlowLayout!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let availableWidth = view.frame.width
        let itemSize = CGSize(width: availableWidth - (8 * 4), height: 175)
        let minimumInterItemSpacing: CGFloat = 8
        let minimumLineSpacing: CGFloat = 12

        flowLayout.itemSize = itemSize

        flowLayout.sectionInset.top = 8
        flowLayout.sectionInset.bottom = 8
        flowLayout.sectionInset.left = 8
        flowLayout.sectionInset.right = 8

        flowLayout.minimumInteritemSpacing = minimumInterItemSpacing
        flowLayout.minimumLineSpacing = minimumLineSpacing
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.collectionView.reloadData()
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
