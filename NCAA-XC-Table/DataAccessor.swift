//
//  DataAccessor.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/22/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

var menEventList = ["100 Meters" , "110 Meter Hurdles" , "200 Meters" , "400 Meters" , "400 Meter Hurdles" , "800 Meters" , "1500 Meters" , "3000 Meter Steeplechase" , "5,000 Meters" , "10,000 Meters" , "4x100 Meter Relay" , "4x400 Meter Relay" , "Triple Jump" , "Long Jump" , "High Jump" , "Pole Vault" , "Javelin" , "Shotput" , "Discus" , "Hammer Throw"]

//Distance Event Arrays
var d1_west_800mTimes = [String]()
var d1_west_1500Times = [String]()
var d1_west_5kTimes = [String]()
var d1_west_steepleTimes = [String]()
var d1_west_10kTimes = [String]()

//Sprint Event Arrays
var d1_west_100mTimes = [String]()
var d1_west_200mTimes = [String]()
var d1_west_400mTimes = [String]()

//Relay Results
var d1_west_4x100mTimes = [String]()
var d1_west_4x400mTimes = [String]()

//Hurdle Event Arrays
var d1_west_110hTimes = [String]()
var d1_west_400hTimes = [String]()

//Horizontal Jumps Event Arrays
var d1_west_tripleJumpDistance = [String]()
var d1_west_longJumpDistance = [String]()

//Vertical Jumps Event Arrays
var d1_west_highJumpHeight = [String]()
var d1_west_poleVaultHeight = [String]()

//Throws Event Arrays
var d1_west_shotputDistance = [String]()
var d1_west_discusDistance = [String]()
var d1_west_hammerDistance = [String]()
var d1_west_javelinDistance = [String]()

//Jack of All Trades; Masters of None Arrays
var d1_west_hepthalonPoints = [String]()
var d1_west_decathalonPoints = [String]()

var array = [String]()

class DataManagement {

    func reset() {
        d1_west_5kTimes.removeAll()
        d1_west_10kTimes.removeAll()
        d1_west_1500Times.removeAll()
        d1_west_steepleTimes.removeAll()
    }
}

