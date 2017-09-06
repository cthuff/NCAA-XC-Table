//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class DistanceSetup {
    
    func setup()
    {
        event_800mTimes = load800()
        event_1500Times = load1500()
        event_steepleTimes = loadSteeple()
        event_5kTimes = load5k()
        event_10kTimes = load10k()
        
    }

    
    func load800() -> [String] {
        let csv = Bundle.main.url(forResource: "800FirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            _ = "take up some space to kill time for this to work"
            //            let place = split[0]
            let time = split[eventIndex + 4]
            
            athlete.append(time)
        }
        return athlete
    }

    
    func load1500() -> [String] {
        let csv = Bundle.main.url(forResource: "1500FirstRound", withExtension: "csv")
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
    
    func load5k() -> [String] {
        let csv = Bundle.main.url(forResource: "5kFirstRound", withExtension: "csv")
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

    func loadSteeple() -> [String] {
        let csv = Bundle.main.url(forResource: "SteepleFirstRound", withExtension: "csv")
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

    func load10k() -> [String] {
        let csv = Bundle.main.url(forResource: "10kFirstRound", withExtension: "csv")
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
