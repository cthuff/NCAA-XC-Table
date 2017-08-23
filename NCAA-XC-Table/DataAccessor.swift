//
//  DataAccessor.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/22/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

var d1_west_1500Times = [Int: String]()
var d1_west_5kTimes = [Int: String]()
var d1_west_steepleTimes = [Int: String]()
var d1_West_10kTimes = [Int: String]()

var array = [String]()

class DataAccessor {

    func test()
    {
        var x: Int = 0;
        while array.count < 96{
            array.append("[\(x)] =")
            x = x + 1
        }
        
        for items in array
        {
            print(items)
        }
    }
}
