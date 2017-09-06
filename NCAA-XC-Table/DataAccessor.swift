//
//  DataAccessor.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/22/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

var menEventList = ["100 Meters" , "110 Meter Hurdles" , "200 Meters" , "400 Meters" , "400 Meter Hurdles" , "800 Meters" , "1500 Meters" , "3000 Meter Steeplechase" , "5,000 Meters" , "10,000 Meters" , "4x100 Meter Relay" , "4x400 Meter Relay" , "Triple Jump" , "Long Jump" , "High Jump" , "Pole Vault" , "Javelin" , "Shotput" , "Discus" , "Hammer Throw"]

//Results from Previous years
var _2014 = [String]()
var _2015 = [String]()
var _2016 = [String]()
var _2017 = [String]()


//Distance Event Arrays
var men_800mTimes = [String]()
var men_1500Times = [String]()
var men_5kTimes = [String]()
var men_steepleTimes = [String]()
var men_10kTimes = [String]()

//Sprint Event Arrays
var men_100mTimes = [String]()
var men_200mTimes = [String]()
var men_400mTimes = [String]()

//Relay Results
var men_4x100mTimes = [String]()
var men_4x400mTimes = [String]()

//Hurdle Event Arrays
var men_110hTimes = [String]()
var men_400hTimes = [String]()

//Horizontal Jumps Event Arrays
var men_tripleJumpDistance = [String]()
var men_longJumpDistance = [String]()

//Vertical Jumps Event Arrays
var men_highJumpHeight = [String]()
var men_poleVaultHeight = [String]()

//Throws Event Arrays
var men_shotputDistance = [String]()
var men_discusDistance = [String]()
var men_hammerDistance = [String]()
var men_javelinDistance = [String]()

//Jack of All Trades; Masters of None Arrays
var men_hepthalonPoints = [String]()
var men_decathalonPoints = [String]()

class DataManagement {
    
    func reset() {
        men_800mTimes.removeAll()
        men_5kTimes.removeAll()
        men_10kTimes.removeAll()
        men_1500Times.removeAll()
        men_steepleTimes.removeAll()
    }
    
    func sortAndSearchs(eventArray: [String], eventMark: String) -> Int {
        var marks: [String] = eventArray
        marks.append(eventMark)
        marks.sort()
        return marks.index(of: eventMark)!
    }
    
}

