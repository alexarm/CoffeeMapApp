//
//  CoffeeShopDetailsView.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 26.07.2021.
//

import UIKit

class CoffeeShopDetailsView: UIView {
    
    @IBOutlet var coffeeShopImage: UIImageView!
    @IBOutlet var coffeeShopDescriptionLabel: UILabel!
    @IBOutlet var coffeeShopDiscountLabel: UILabel!
    @IBOutlet var coffeeShopAddressLabel: UILabel!
    @IBOutlet var coffeeShopInstagramText: UITextView!
    @IBOutlet var scrollView: UIScrollView!
    
    let coffeeShopInfoController = CoffeeShopsInfoController()
    
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
    
    func setup(from coffeeShop: CoffeeShop) {
        scrollView.setContentOffset(.zero, animated: false)
        
        coffeeShopDescriptionLabel.text = coffeeShop.description
        
        let instagram = coffeeShop.instagram
        let instagramOpenText = "Открыть в Instagram"
        
        let instagramLink = NSMutableAttributedString(string: instagramOpenText)
        instagramLink.addAttribute(.font, value: UIFont.systemFont(ofSize: 17), range: NSRange(location: 0, length: instagramOpenText.count))
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        instagramLink.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: instagramOpenText.count))
        instagramLink.addAttribute(.link, value: instagram, range: NSRange(location: 0, length: instagramOpenText.count))
        
        coffeeShopInstagramText.isUserInteractionEnabled = true
        coffeeShopInstagramText.attributedText = instagramLink
        
        
        coffeeShopAddressLabel.text = coffeeShop.address
        
        let discount = coffeeShop.discount
        if !discount.isEmpty {
            coffeeShopDiscountLabel.isHidden = false
            coffeeShopDiscountLabel.text = "🌿 -\(discount)% в свою кружку"
        } else {
            coffeeShopDiscountLabel.isHidden = true
        }
        
        coffeeShopImage.layer.cornerRadius = 10
        
        let imageUrl = coffeeShop.image
        let encodedString = imageUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let encodedUrl = URL(string: encodedString)!
        
        coffeeShopInfoController.fetchImage(from: encodedUrl) { image in
            let image = image ?? UIImage(systemName: "photo")
            
            DispatchQueue.main.async {
                self.coffeeShopImage.image = image
            }
        }
    }
}
