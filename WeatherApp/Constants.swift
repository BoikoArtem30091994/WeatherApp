  //
//  Constants.swift
//  WeatherApp
//
//  Created by Boiko Artem on 21.09.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import Foundation


let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "0383fdabf57dbda47075bf4fb286fb32"

typealias DownloadComplete = () -> ()
  
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longtitude!)\(APP_ID)\(API_KEY)"

  
let FORECAST_URL = "https://api.darksky.net/forecast/0d3fb74c5b3fd708c2548bb95692f9d7/\(Location.sharedInstance.latitude!),\(Location.sharedInstance.longtitude!)?units=si"
 
//OpenWeatherApi
//"http://api.openweathermap.org/data/2.5/forecast?lat=&lon=121.9&appid=0383fdabf57dbda47075bf4fb286fb32"
  
// Dark Sky Api
//https://api.darksky.net/forecast/0d3fb74c5b3fd708c2548bb95692f9d7/-33.87,121
  
//First commit
