//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class HurdleSetup{
    
    func eventSetup()
    {
        event_110hTimes = load110H()
        event_400hTimes = load400H()
    }
    
    func load110H() -> [String] {
        let csv = Bundle.main.url(forResource: "110HFirstRound", withExtension: "csv")
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
    
    func load400H() -> [String] {
        let csv = Bundle.main.url(forResource: "400HFirstRound", withExtension: "csv")
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
