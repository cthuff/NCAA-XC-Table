//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class RelaySetup {
    
    func eventSetup()
    {
        event_4x100mTimes = load4x100m()
        event_4x400mTimes = load4x400m()
    }
    
    func load4x100m() -> [String] {
        let csv = Bundle.main.url(forResource: "4x100FirstRound", withExtension: "csv")
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
    
    func load4x400m() -> [String] {
        let csv = Bundle.main.url(forResource: "4x400FirstRound", withExtension: "csv")
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
