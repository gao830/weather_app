//
//  ViewController.swift
//  weather
//
//  Created by Yunpeng Gao on 3/15/17.
//  Copyright © 2017 Yunpeng Gao. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var currentTemp: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var currentWeatherImg: UIImageView!
    
    @IBOutlet weak var currentWeatherType: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var currentWeather = WeatherData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        return cell
    }
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTemp.text = "\(currentWeather.currentTemp)℉"
        currentWeatherType.text = currentWeather.weatherType
        locationLabel.text = currentWeather.cityName
        currentWeatherImg.image = UIImage(named: currentWeather.weatherType)
        
        
    }


}

