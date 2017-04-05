//
//  WeatherCell.swift
//  weather
//
//  Created by Bill Gao on 2017/3/30.
//  Copyright © 2017年 Yunpeng Gao. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    @IBOutlet weak var date: UILabel!

    @IBOutlet weak var weatherType: UILabel!
   
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!

    @IBOutlet weak var weatherTypeImg: UIImageView!
    
    func configureCell(forecast: Forecast) {
        date.text = forecast.date
        weatherType.text = forecast.weatherType
        highTemp.text = "\(forecast.highTemp)"
        lowTemp.text = "\(forecast.lowTemp)"
        weatherTypeImg.image = UIImage(named: forecast.weatherType)
    }
    
    
    
}
