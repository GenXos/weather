//
//  main.swift
//  weather
//
//  Created by Todd Fields on 2017-05-26.
//  Copyright © 2017 SKULLGATE Studios. All rights reserved.
//

import Foundation

print("Hello, World!")

//for arg in CommandLine.arguments {
//    
//    print(arg)
//}

let weather = Weather()

while !weather.finished {
    
    if !weather.apiRequest {
        
        weather.getTemp(location: "Tokyo, Japan")
        weather.apiRequest = true
    }
}
