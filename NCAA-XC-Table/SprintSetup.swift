//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

let d1_100m_Key: String = "100m"
let d1_200m_Key: String = "200m"
let d1_400m_Key: String = "400m"

class SprintSetup {
    
    func init100m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: " ")
//            let place = split[0]
            let time = split[1]
            
           athlete.append(time)
        }
        return athlete
    }
    
    func init200m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: " ")
            //            let place = split[0]
            let time = split[1]
            
            athlete.append(time)
        }
        return athlete
    }

    func init400m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: " ")
            //            let place = split[0]
            let time = split[1]
            
            athlete.append(time)
        }
        return athlete
    }

    func reset() {
        d1_west_100mTimes.removeAll()
        d1_west_200mTimes.removeAll()
        d1_west_400mTimes.removeAll()
    }
}
