//
//  Constant.swift
//  weather
//
//  Created by Yunpeng Gao on 3/18/17.
//  Copyright © 2017 Yunpeng Gao. All rights reserved.
//

import Foundation
let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATTITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let APP_KEY = "b1b15e88fa797225412429c1c50c122a1"
let CURRENT_URL = "\(BASE_URL)\(LATTITUDE)35\(LONGITUDE)139\(APP_ID)\(APP_KEY)"
typealias DownloadComplete = () -> ()

//lat=35&lon=139&appid=b1b15e88fa797225412429c1c50c122a1
