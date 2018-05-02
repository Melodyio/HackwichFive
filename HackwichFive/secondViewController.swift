//
//  secondViewController.swift
//  HackwichFive
//
//  Created by CM Student on 4/16/18.
//  Copyright © 2018 Melody Oki. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class secondViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.333777 , longitude: -158.052372)
    let regionRadius: CLLocationDistance = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Eatery Locations"
    
    self.navigationController?.title = "Map"
        
        // Do any additional setup after loading the view.
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Cheesecake Factory", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.333916, longitude: -158.050447))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Five Guys", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.333377, longitude: -158.051791))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "Sura Hawaii", type: "Korean", coordinate: CLLocationCoordinate2D(latitude: 21.334293, longitude: -158.052022))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Moena Cafe", type: "Hawaiian", coordinate: CLLocationCoordinate2D(latitude: 21.332527, longitude: -158.052443))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "California Pizza Kitchen", type: "American and Italian", coordinate: CLLocationCoordinate2D(latitude: 21.333564, longitude: -158.051434))
        mapView.addAnnotation(restaurantSix)
        
        let restaurantSeven = Restaurant(title: "Kickin Kajun", type: "Cajun", coordinate: CLLocationCoordinate2D(latitude: 21.333126, longitude: -158.051396))
        mapView.addAnnotation(restaurantSeven)
        
    }

    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
