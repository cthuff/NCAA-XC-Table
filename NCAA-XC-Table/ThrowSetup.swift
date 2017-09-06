//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

let men_discus_Key: String = "Discus"
let men_javelin_Key: String = "Javelin"
let men_shotput_Key: String = "Shot Put"
let men_hammer_Ket: String = "Hammer Throw"


class ThrowSetup {
    
    func setup()
    {
        men_discusDistance = loadDiscus()
        men_discusDistance = men_discusDistance.sorted()
        men_javelinDistance = loadJavelin()
        men_javelinDistance = men_javelinDistance.sorted()
        men_shotputDistance = loadShotPut()
        men_shotputDistance = men_shotputDistance.sorted()
        men_hammerDistance = loadHammer()
        men_hammerDistance = men_hammerDistance.sorted()
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
            let time = split[4]

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
            let time = split[4]
 
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
            let time = split[4]

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
            let time = split[4]

            athlete.append(time)
        }
        return athlete
    }

}
