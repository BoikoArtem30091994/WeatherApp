//
//  Forecast.swift
//  WeatherApp
//
//  Created by Boiko Artem on 25.09.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import UIKit
import Alamofire

class Forecast{
    
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    var _weatherIcon: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String! {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var weatherIcon: String {
        if _weatherIcon == nil {
            _weatherIcon = ""
        }
        return _weatherIcon
    }
    
    var lowTemp: String! {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        
        if let temperatureMin = weatherDict["temperatureMin"] as? Double {
            
            let temp = Double(lround(temperatureMin))
            let temperature = Int(temp)
            self._lowTemp = "\(temperature)"
        }
        
        if let temperatureMax = weatherDict["temperatureMax"] as? Double {
            
            let temp = Double(lround(temperatureMax))
            let temperature = Int(temp)
            self._highTemp = "\(temperature)"
            
        }
        
        if let summary = weatherDict["summary"] as? String {
            
            self._weatherType = summary
        
        }
        
        if let icon = weatherDict["icon"] as? String {
            self._weatherIcon = icon
        }
        
        if let time = weatherDict["time"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: time)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }
}

extension Date{
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}








