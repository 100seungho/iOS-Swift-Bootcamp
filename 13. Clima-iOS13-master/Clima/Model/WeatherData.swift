//
//  WeatherData.swift
//  Clima
//
//  Created by 백승호 on 2019/11/15.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
    
}

struct Weather: Decodable {
    let id: Int
}
