//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class ThrowSetup {
    
    func eventSetup()
    {
        event_discusDistance = loadDiscus()
        event_javelinDistance = loadJavelin()
        event_shotputDistance = loadShotPut()
        event_hammerDistance = loadHammer()
        
    }
    
    func loadDiscus() -> [String] {
        let csv = Bundle.main.url(forResource: "DiscusFirstRound", withExtension: "csv")
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
    
    func loadJavelin() -> [String] {
        let csv = Bundle.main.url(forResource: "JavelinFirstRound", withExtension: "csv")
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

    func loadShotPut() -> [String] {
        let csv = Bundle.main.url(forResource: "ShotPutFirstRound", withExtension: "csv")
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

    func loadHammer() -> [String] {
        let csv = Bundle.main.url(forResource: "HammerThrowFirstRound", withExtension: "csv")
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
