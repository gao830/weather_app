//
//  WeatherData.swift
//  weather
//
//  Created by Yunpeng Gao on 3/18/17.
//  Copyright © 2017 Yunpeng Gao. All rights reserved.
//

import Foundation
import Alamofire

class WeatherData {
    private var _cityName: String!
    private var _date: String!
    private var _weatherType: String!
    private var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter  = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
       
        let currentWeatherURL = URL(string: CURRENT_URL)!
//        print("latitude: \(Location.currentInstance.latitude)")
//        print("longtitude: \(Location.currentInstance.longitude)")
//        print(currentWeatherURL)
        Alamofire.request(currentWeatherURL).responseJSON { response in
            let result = response.result
//            print(response)
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
//                    print(self._cityName)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    if let main = weather[0]["main"] as? String{
                        self._weatherType = main.capitalized
                    }
//                    print(self._weatherType)
                    
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    
                    if let currentTemperature = main["temp"] as? Double {
                        let fareneitTemp = Double(round(10 * (currentTemperature * (9/5) - 459.67) / 10))
                        self._currentTemp = fareneitTemp
                        
                    }
//                    print(self._currentTemp)
                }
            }
            completed()
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
