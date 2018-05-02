//
//  Restaurant.swift
//  HackwichFive
//
//  Created by Hillary Oki on 5/2/18.
//  Copyright © 2018 Melody Oki. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    
    let restaurantTitle: String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }

    var subtitle: String? {
        return restaurantTitle
    }
    
}
