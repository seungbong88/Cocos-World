//
//  CityInfo.swift
//  CCW
//
//  Created by seungbong on 2020/02/03.
//  Copyright © 2020 한승희. All rights reserved.
//

import Foundation

struct CityInfo: Codable {
    var city_name: String
    var state: Double
    var celsius: Double
    var rainfall_probability: Int
    
    func weaterImage() -> String {
        if rainfall_probability > 40 {
            return (state > 20 || celsius > 10) ? "rainy" : "snowy"
        } else {
            return (state > 20 || celsius > 10) ? "sunny" : "cloudy"
        }
    }
}


