//
//  Location.swift
//  WeatherApp
//
//  Created by Boiko Artem on 29.09.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longtitude: Double!

}
