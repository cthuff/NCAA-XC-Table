//
//  DataAccessor.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/22/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

var eventEventList = ["100 Meters" , "110 Meter Hurdles" , "200 Meters" , "400 Meters" , "400 Meter Hurdles" , "800 Meters" , "1500 Meters" , "3000 Meter Steeplechase" , "5,000 Meters" , "10,000 Meters" , "4x100 Meter Relay" , "4x400 Meter Relay" , "Triple Jump" , "Long Jump" , "High Jump" , "Pole Vault" , "Javelin" , "Shotput" , "Discus" , "Hammer Throw"]

var eventIndex = 0


//Results from Previous years
var _2014 = [String]()
var _2015 = [String]()
var _2016 = [String]()
var _2017 = [String]()


//Distance Event Arrays
var event_800mTimes = [String]()
var event_1500Times = [String]()
var event_5kTimes = [String]()
var event_steepleTimes = [String]()
var event_10kTimes = [String]()

//Sprint Event Arrays
var event_100mTimes = [String]()
var event_200mTimes = [String]()
var event_400mTimes = [String]()

//Relay Results
var event_4x100mTimes = [String]()
var event_4x400mTimes = [String]()

//Hurdle Event Arrays
var event_110hTimes = [String]()
var event_400hTimes = [String]()

//Horizontal Jumps Event Arrays
var event_tripleJumpDistance = [String]()
var event_longJumpDistance = [String]()

//Vertical Jumps Event Arrays
var event_highJumpHeight = [String]()
var event_poleVaultHeight = [String]()

//Throws Event Arrays
var event_shotputDistance = [String]()
var event_discusDistance = [String]()
var event_hammerDistance = [String]()
var event_javelinDistance = [String]()

//Jack of All Trades; Masters of None Arrays
var event_hepthalonPoints = [String]()
var event_decathalonPoints = [String]()

class DataManagement {
    
    func reset() {
        _2014.removeAll()
        _2015.removeAll()
        _2016.removeAll()
        _2017.removeAll()
    }
    
    func sortAndSearchs(eventArray: [String], eventMark: String) -> Int {
        var marks: [String] = eventArray
        marks.append(eventMark)
        marks.sort()
        return marks.index(of: eventMark)!
    }
 
    func setEventArray()
    {
        reset()
        switch eventString {
        case "100 Meters":
            let csv = Bundle.main.url(forResource: "100FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_100mTimes
        case "110 Meter Hurdles":
            let csv = Bundle.main.url(forResource: "110HFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_110hTimes
        case "200 Meters":
            let csv = Bundle.main.url(forResource: "200FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_200mTimes
        case "400 Meters":
            let csv = Bundle.main.url(forResource: "400FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_400mTimes
        case "400 Meter Hurdles":
            let csv = Bundle.main.url(forResource: "400HFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_400hTimes
        case "800 Meters":
            let csv = Bundle.main.url(forResource: "800FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_800mTimes
        case "1500 Meters":
            let csv = Bundle.main.url(forResource: "1500FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_1500Times
        case "3000 Meter Steeplechase":
            let csv = Bundle.main.url(forResource: "SteepleFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_steepleTimes
        case "5,000 Meters":
            let csv = Bundle.main.url(forResource: "5kFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_5kTimes
        case "10,000 Meters":
            let csv = Bundle.main.url(forResource: "10kFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_10kTimes
        case "4x100 Meter Relay":
            let csv = Bundle.main.url(forResource: "4x100FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_4x100mTimes
        case "4x400 Meter Relay":
            let csv = Bundle.main.url(forResource: "4x400FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_4x400mTimes
        case "Triple Jump":
            let csv = Bundle.main.url(forResource: "TripleJumpFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_tripleJumpDistance
        case "Long Jump":
            let csv = Bundle.main.url(forResource: "LongJumpFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_longJumpDistance
        case "High Jump":
            let csv = Bundle.main.url(forResource: "HighJumpFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_highJumpHeight
        case "Pole Vault":
            let csv = Bundle.main.url(forResource: "PoleVaultFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_poleVaultHeight
        case "Javelin":
            let csv = Bundle.main.url(forResource: "JavelinFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_javelinDistance
        case "Shotput":
            let csv = Bundle.main.url(forResource: "ShotPutFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_shotputDistance
        case "Discus":
            let csv = Bundle.main.url(forResource: "DiscusFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_discusDistance
        case "Hammer Throw":
            let csv = Bundle.main.url(forResource: "HammerThrowFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_hammerDistance
        case "Decathlon":
            let csv = Bundle.main.url(forResource: "DecathlonFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_decathalonPoints
        case "Heptahlon":
            let csv = Bundle.main.url(forResource: "HeptathlonFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[eventIndex + 3])
                _2016.append(split[eventIndex + 2])
                _2015.append(split[eventIndex + 1])
                _2014.append(split[eventIndex])
            }
            eventArray = event_hepthalonPoints
        default:
            print("Why is this so fucked up?")
        }
    }
    
    
    
}

