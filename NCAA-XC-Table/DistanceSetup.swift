//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

let d1_1500_Key: String = "1500m"
let d1_steeple_Key: String = "Steeplechase"
let d1_5k_Key: String = "5k"
let d1_10k_Key: String = "10k"

var _2014 = [String]()
var _2015 = [String]()
var _2016 = [String]()
var _2017 = [String]()

class DistanceSetup {
    
    func init1500() -> [String] {
        let csv = Bundle.main.url(forResource: "1500FirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
//            let place = split[0]
            let time = split[4]
            _2017.append(split[3])
            _2016.append(split[2])
            _2015.append(split[1])
            _2014.append(split[0])
           athlete.append(time)
        }
        return athlete
    }
    
    func init5k() -> [String] {
        let csv = Bundle.main.url(forResource: "5kFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]
            _2017.append(split[3])
            _2016.append(split[2])
            _2015.append(split[1])
            _2014.append(split[0])
            athlete.append(time)
        }
        return athlete
    }

    func initSteeple() -> [String] {
        let csv = Bundle.main.url(forResource: "SteepleFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]
            _2017.append(split[3])
            _2016.append(split[2])
            _2015.append(split[1])
            _2014.append(split[0])
            athlete.append(time)
        }
        return athlete
    }

    func init10k() -> [String] {
        let csv = Bundle.main.url(forResource: "10kFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: " ")
            //            let place = split[0]
            let time = split[4]
            _2017.append(split[3])
            _2016.append(split[2])
            _2015.append(split[1])
            _2014.append(split[0])
            athlete.append(time)
        }
        return athlete
    }

}
