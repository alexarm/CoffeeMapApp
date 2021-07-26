//
//  CoffeeShopDetailsView.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 26.07.2021.
//

import UIKit

class CoffeeShopDetailsView: UIView {

    @IBOutlet var coffeeShopDetailsNavigationBar: UINavigationBar!
    @IBOutlet var coffeeShopImage: UIImageView!
    @IBOutlet var coffeeShopDescriptionLabel: UILabel!
    @IBOutlet var coffeeShopDiscountLabel: UILabel!
    @IBOutlet var coffeeShopAddressLabel: UILabel!
    @IBOutlet var coffeeShopInstagramText: UITextView!
    @IBOutlet var scrollView: UIScrollView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func loadFromNib() -> UIView {
        let nib = UINib(nibName: "CoffeeShopDetailsView", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        view.layer.cornerRadius = 10
        
        return view
    }
    
    func setup() {
        let nibView = loadFromNib()
        nibView.frame = bounds
        nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(nibView)
    }
}
