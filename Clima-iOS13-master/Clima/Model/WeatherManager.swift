//
//  WeatherManager.swift
//  Clima
//
//  Created by 백승호 on 2019/11/11.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct  WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=78e5fdc94ceb1e4669e4b537bb03bff1&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create a URL
        
        if let url = URL(string: urlString) {
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data: response: error: ))
            
            //4. Start the tast
            task.resume()
        }
        
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString) 
        }
    }
    
}
