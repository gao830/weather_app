//
//  Constant.swift
//  weather
//
//  Created by Yunpeng Gao on 3/18/17.
//  Copyright © 2017 Yunpeng Gao. All rights reserved.
//

import Foundation
let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATTITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let APP_KEY = "b1b15e88fa797225412429c1c50c122a1"
let CURRENT_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.currentInstance.latitude!)&lon=\(Location.currentInstance.longitude!)&appid=eb16dff519ffc2ffa6e1d0c900159a68"

let URL_EX = "http://api.openweathermap.org/data/2.5/weather?zip=94040,us&appid=b1b15e88fa797225412429c1c50c122a1"
typealias DownloadComplete = () -> ()

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.currentInstance.latitude!)&lon=\(Location.currentInstance.longitude!)&cnt=10&appid=eb16dff519ffc2ffa6e1d0c900159a68"








