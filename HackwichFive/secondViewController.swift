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
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        centerMapOnLocation(location: initialLocation)
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
