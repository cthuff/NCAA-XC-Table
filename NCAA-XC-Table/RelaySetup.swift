//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class RelaySetup {
    
    func setup()
    {
        men_4x100mTimes = load4x100m()
        men_4x100mTimes = men_4x100mTimes.sorted()
        men_4x400mTimes = load4x400m()
        men_4x400mTimes = men_4x400mTimes.sorted()
    }
    
    func load4x100m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
//            let place = split[0]
            let time = split[1]
            
           athlete.append(time)
        }
        return athlete
    }
    
    func load4x400m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[1]
            
            athlete.append(time)
        }
        return athlete
    }

    func load400m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[1]
            
            athlete.append(time)
        }
        return athlete
    }

    func reset() {
        men_100mTimes.removeAll()
        men_200mTimes.removeAll()
        men_400mTimes.removeAll()
    }
}
