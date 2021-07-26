//
//  ViewController.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 08.04.2021.
//

import UIKit
import GoogleMaps

//MARK: MapViewController

class MapViewController: UIViewController {
    
    let coffeeShopInfoController = CoffeeShopsInfoController()
    let locationManager = CLLocationManager()
    
    @IBOutlet var mapMainView: GMSMapView!
    
    @IBOutlet var coffeeDetailsView: UIView!
    @IBOutlet var coffeeDetailsNavigationBar: UINavigationBar!
    @IBOutlet var coffeeShopDetailsView: CoffeeShopDetailsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        locationManager.delegate = self
        mapMainView.delegate = self
        
        setupCoffeeDetailsView()
        setupCoffeeDetailsNavigationBar()
        setupGestureRecognizers()
        
        coffeeShopInfoController.fetchCoffeeShopsInfo { (result) in
            switch result {
            case .success(let coffeeShops):
                self.addCoffeeShopsToMap(coffeeShops: coffeeShops)
            case .failure(let error):
                print(error)
                self.addCoffeeShopsToMap(coffeeShops: [])
            }
        }
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestLocation()
            mapMainView.isMyLocationEnabled = true
            mapMainView.settings.myLocationButton = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
        
    }
    
    func setupCoffeeDetailsView() {
        coffeeDetailsView.layer.cornerRadius = 10
        coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: view.frame.height)
        coffeeDetailsView.isHidden = true
    }
    
    func setupCoffeeDetailsNavigationBar() {
        coffeeDetailsNavigationBar.layer.cornerRadius = 10
        coffeeDetailsNavigationBar.clipsToBounds = true
        coffeeDetailsNavigationBar.isTranslucent = true
        coffeeDetailsNavigationBar.setBackgroundImage(UIImage(), for: .default)
        coffeeDetailsNavigationBar.shadowImage = UIImage()
    }
    
    func setupGestureRecognizers() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleCloseDetails(_:)))
        mapMainView.isUserInteractionEnabled = true
        coffeeDetailsView.addGestureRecognizer(tapGesture)
        
        let openLinkTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(openUrlByTap(_:)))
        coffeeShopDetailsView.coffeeShopInstagramText.addGestureRecognizer(openLinkTapGestureRecognizer)
    }
    
    func addCoffeeShopsToMap(coffeeShops: [CoffeeShop]) {
        DispatchQueue.main.async {
            for coffeeShop in coffeeShops {
                let coffeeLatitude = CLLocationDegrees(coffeeShop.location[0])
                let coffeeLongtitude = CLLocationDegrees(coffeeShop.location[1])
                let marker = GMSMarker()
                marker.title = coffeeShop.name
                marker.position = CLLocationCoordinate2D(latitude: coffeeLatitude, longitude: coffeeLongtitude)
                marker.map = self.mapMainView
            }
        }
    }
    
    func showCoffeeShopDescription(from marker: GMSMarker) {
        let chosenCoffeeshop = CoffeeShopsInfoController.coffeeShops.filter {$0.name == marker.title}.first!
        
        coffeeDetailsNavigationBar.topItem?.title = chosenCoffeeshop.name
        
        coffeeShopDetailsView.setup(from: chosenCoffeeshop)
        
        coffeeDetailsView.isHidden = false
        
        UIView.animate(withDuration: 0.2, animations: {
            self.coffeeDetailsView.alpha = 1.0
            self.coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
    }
    
    @IBAction func handleCloseDetails(_ sender: UITapGestureRecognizer) {
        let height = view.frame.height / 2
        
        UIView.animate(withDuration: 0.2, animations: {
            self.coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: height)
            self.coffeeDetailsView.alpha = 0.0
        }, completion: {_ in
            self.coffeeDetailsView.isHidden = true
        })
    }
    
    @IBAction func closeDetailsButtonTapped(_ sender: UIBarButtonItem) {
        let height = view.frame.height / 2
        
        UIView.animate(withDuration: 0.2, animations: {
            self.coffeeDetailsView.transform = CGAffineTransform(translationX: 0, y: height)
            self.coffeeDetailsView.alpha = 0.0
        }, completion: {_ in
            self.coffeeDetailsView.isHidden = true
        })
    }
    
    @objc func openUrlByTap(_ recognizer: UITapGestureRecognizer) {
        let instagramTextView = recognizer.view as! UITextView
        if let url = instagramTextView.attributedText.attribute(.link, at: 0, effectiveRange: nil) as! String? {
            UIApplication.shared.open(URL(string: url)!, options: [:], completionHandler: nil)
        }
    }
    
}

//MARK: GMSMapViewDelegate

extension MapViewController: GMSMapViewDelegate {
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        showCoffeeShopDescription(from: marker)
        return true
    }
}

//MARK: CLLocationManagerDelegate

extension MapViewController: CLLocationManagerDelegate {
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
