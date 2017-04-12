//
//  File.swift
//  weather
//
//  Created by Bill Gao on 2017/3/30.
//  Copyright © 2017年 Yunpeng Gao. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var currentInstance = Location()
    private init(){}
    
    var latitude: Double!
    var longitude: Double!
}
