//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class SprintSetup {
    
    func eventSetup()
    {
        event_100mTimes = load100m()
        event_200mTimes = load200m()
        event_400mTimes = load400m()
        
    }
    
    func load100m() -> [String] {
        let csv = Bundle.main.url(forResource: "100FirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
//            let place = split[0]
            let time = split[eventIndex + 4]
            
           athlete.append(time)
        }
        return athlete
    }
    
    func load200m() -> [String] {
        let csv = Bundle.main.url(forResource: "200FirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[eventIndex + 4]
            
            athlete.append(time)
        }
        return athlete
    }

    func load400m() -> [String] {
        let csv = Bundle.main.url(forResource: "400FirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[eventIndex + 4]
            
            athlete.append(time)
        }
        return athlete
    }

}
