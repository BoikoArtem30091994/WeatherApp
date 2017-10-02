//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by Boiko Artem on 28.09.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = "\(forecast.lowTemp!)°"
        highTemp.text = "\(forecast.highTemp!)°"
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherIcon)
        dayLabel.text = forecast.date
    }
   

}
