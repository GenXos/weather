//
//  main.swift
//  weather
//
//  Created by Todd Fields on 2017-05-26.
//  Copyright © 2017 SKULLGATE Studios. All rights reserved.
//

import Foundation

let weather = Weather()
var location = ""

if CommandLine.arguments.count <= 1 {
    
    print("You need to provide a location.")
    weather.finished = true
} else {
    
    for index in 0..<CommandLine.arguments.count {
        
        if index != 0{
            
            location += CommandLine.arguments[index] + " "
        }
    }
}

while !weather.finished {
    
    if !weather.apiRequest {
        
        weather.getTemp(location: location)
        weather.apiRequest = true
    }
}
