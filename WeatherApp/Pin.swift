//
//  Pin.swift
//  WeatherApp
//
//  Created by Boiko Artem on 18.11.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import Foundation
import MapKit

class Pin: NSObject, MKAnnotation {
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String){
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
}
