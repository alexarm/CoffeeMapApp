//
//  ViewController.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 08.04.2021.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    
    
    let locationManager = CLLocationManager()
    
    @IBOutlet var coffeeHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var mapMainView: GMSMapView!
    
    @IBOutlet var coffeeDetailsView: UIView!
    @IBOutlet var coffeShopDetailsNavigationBar: UINavigationBar!
    @IBOutlet var coffeeShopDescriptionLabel: UILabel!
    @IBOutlet var coffeeShopDiscountLabel: UILabel!
    @IBOutlet var coffeeShopAddressLabel: UILabel!
    @IBOutlet var coffeeShopInstagramText: UITextView!
    @IBOutlet var coffeeShopImage: UIImageView!
    
    var coffeeShops: [CoffeeShop] = CoffeeShop.all
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view

        coffeeDetailsView.layer.cornerRadius = 10
        coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: 448)
        coffeeDetailsView.isHidden = true
        
        coffeShopDetailsNavigationBar.layer.cornerRadius = 10
        coffeShopDetailsNavigationBar.clipsToBounds = true
        coffeShopDetailsNavigationBar.isTranslucent = true
        coffeShopDetailsNavigationBar.setBackgroundImage(UIImage(), for: .default)
        coffeShopDetailsNavigationBar.shadowImage = UIImage()
        
        locationManager.delegate = self
        mapMainView.delegate = self

        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestLocation()
            mapMainView.isMyLocationEnabled = true
            mapMainView.settings.myLocationButton = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
        
        addCoffeeShopsToMap()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleCloseDetails(_:)))
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(swipeDownDetails(_:)))
        mapMainView.isUserInteractionEnabled = true
        coffeeDetailsView.addGestureRecognizer(tapGesture)
        coffeeDetailsView.addGestureRecognizer(panGesture)
        
        let openLinkTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(openUrlByTap(_:)))
        coffeeShopInstagramText.addGestureRecognizer(openLinkTapGestureRecognizer)
    }
    
    func parseCoffeeShops() {
        let jsonData = coffeeShopsJSON.data(using: .utf16)!
        let shops = try! JSONDecoder().decode(Shops.self, from: jsonData)
        coffeeShops = shops.coffeeShops
    }
    
    func addCoffeeShopsToMap() {
        for coffeeShop in coffeeShops {
            let coffeeLatitude = CLLocationDegrees(coffeeShop.location[0])
            let coffeeLongtitude = CLLocationDegrees(coffeeShop.location[1])
            let marker = GMSMarker()
            marker.title = coffeeShop.name
            marker.position = CLLocationCoordinate2D(latitude: coffeeLatitude, longitude: coffeeLongtitude)
            marker.map = mapMainView
        }
    }

    func showCoffeeShopDescription(from marker: GMSMarker) {
//        coffeeDetailsView.alpha = 0.0
        
        let chosenCoffeeshop = coffeeShops.filter {$0.name == marker.title}.first
        coffeShopDetailsNavigationBar.topItem?.title = chosenCoffeeshop?.name
        coffeeShopDescriptionLabel.text = chosenCoffeeshop?.description
        
        if let instagram = chosenCoffeeshop?.instagram {
            let instagramOpenText = "Открыть в Instagram"
            let instgramLink = NSMutableAttributedString(string: instagramOpenText)
            instgramLink.addAttribute(.font, value: UIFont.systemFont(ofSize: 17), range: NSRange(location: 0, length: instagramOpenText.count))
            let style = NSMutableParagraphStyle()
            style.alignment = .center
            instgramLink.addAttribute(.paragraphStyle, value: style, range: NSRange(location: 0, length: instagramOpenText.count))
            instgramLink.addAttribute(.link, value: instagram, range: NSRange(location: 0, length: instagramOpenText.count))
            coffeeShopInstagramText.isUserInteractionEnabled = true
            coffeeShopInstagramText.attributedText = instgramLink
        }
    
        coffeeShopAddressLabel.text = chosenCoffeeshop?.adress
        if let discount = chosenCoffeeshop?.discount {
            if !discount.isEmpty {
                coffeeShopDiscountLabel.isHidden = false
                coffeeShopDiscountLabel.text = "🌿 -\(discount)% в свою кружку"
            } else {
                coffeeShopDiscountLabel.isHidden = true
            }
        }
        
        if let imageUrl = chosenCoffeeshop?.image {
            let encodedString = imageUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            coffeeShopImage.load(url: URL(string: encodedString!)!)
        }
        
        coffeeDetailsView.isHidden = false
        
        UIView.animate(withDuration: 0.2, animations: {
            self.coffeeDetailsView.alpha = 1.0
            self.coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
    }

    @IBAction func handleCloseDetails(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.2, animations: {
            self.coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: 448)
            self.coffeeDetailsView.alpha = 0.0
        }, completion: {_ in
            self.coffeeDetailsView.isHidden = true
        })
    }
    
    @IBAction func closeDetailsButtonTapped(_ sender: UIBarButtonItem) {
        UIView.animate(withDuration: 0.2, animations: {
            self.coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: 448)
            self.coffeeDetailsView.alpha = 0.0
        }, completion: {_ in
            self.coffeeDetailsView.isHidden = true
        })
    }
    
    @IBAction func swipeDownDetails(_ recognizer: UIPanGestureRecognizer) {
//        if recognizer.state == .changed {
        let translation = recognizer.translation(in: self.coffeeDetailsView)
        
        if coffeeDetailsView.frame.origin.y + translation.y < 448 {
            return
        }
        
        recognizer.view?.center = CGPoint(x: coffeeDetailsView.center.x, y: coffeeDetailsView.center.y + translation.y)
        recognizer.setTranslation(CGPoint.zero, in: self.coffeeDetailsView)

        if coffeeDetailsView.frame.origin.y > 700 {
                UIView.animate(withDuration: 1.0, animations: {
                    self.coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: self.coffeeDetailsView.frame.origin.y)
                    self.coffeeDetailsView.alpha = 0.0
                }, completion: {_ in
//                    self.coffeeDetailsView.isHidden = true
                    self.coffeeDetailsView.center = CGPoint(x: self.coffeeDetailsView.center.x, y: 448 + 224)
                })
            }
//        }
        
    }
    
    
    @objc func openUrlByTap(_ recognizer: UITapGestureRecognizer) {
        let instagramTextView = recognizer.view as! UITextView
        if let url = instagramTextView.attributedText.attribute(.link, at: 0, effectiveRange: nil) as! String? {
            UIApplication.shared.open(URL(string: url)!, options: [:], completionHandler: nil)
        }
    }

}

extension ViewController: GMSMapViewDelegate {
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        showCoffeeShopDescription(from: marker)
        return true
    }
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else { return }
        
        locationManager.requestLocation()
        mapMainView.isMyLocationEnabled = true
        mapMainView.settings.myLocationButton = true
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }

        mapMainView.camera = GMSCameraPosition( target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
      print(error)
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
//        let task = URLSession.shared.dataTask(with: url) {
//            (data, response, error) in
//            if let data = data {
//                if let image = UIImage(data: data) {
//                    self.image = image
//                    self.isHidden = false
//                }
//            } else {
//                self.isHidden = true
//            }
//        }
//        task.resume()
    }
}
