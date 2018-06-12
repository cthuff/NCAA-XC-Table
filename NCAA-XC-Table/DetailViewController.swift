//
//  DetailViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var resultIndex: Int = 0

    @IBOutlet weak var tableCell1: UIView!
    @IBOutlet weak var tableCell2: UIView!
    @IBOutlet weak var tableCell3: UIView!
    @IBOutlet weak var tableCell4: UIView!
    
    @IBOutlet weak var event: UITextField!
    @IBOutlet weak var place: UITextField!
    @IBOutlet weak var time: UITextField!

    @IBOutlet weak var event1: UITextField!
    @IBOutlet weak var time1: UITextField!
    @IBOutlet weak var place1: UITextField!
    
    @IBOutlet weak var event2: UITextField!
    @IBOutlet weak var time2: UITextField!
    @IBOutlet weak var place2: UITextField!
    
    @IBOutlet weak var event3: UITextField!
    @IBOutlet weak var time3: UITextField!
    @IBOutlet weak var place3: UITextField!
    
    @IBOutlet weak var event4: UITextField!
    @IBOutlet weak var time4: UITextField!
    @IBOutlet weak var place4: UITextField!
    
    @IBOutlet weak var time2017: UITextField!
    @IBOutlet weak var time2016: UITextField!
    @IBOutlet weak var time2015: UITextField!
    @IBOutlet weak var time2014: UITextField!
    
    
    // MARK: View
    
    func configureTopView() {
        // Update the user interface for the detail item.
        let data: DataManagement = DataManagement.init()
        var reverse = true
        switch eventString {
        case "High Jump", "Pole Valut",  "Triple Jump",  "Long Jump", "Discus", "Shotput",  "Hammer Throw",  "Javelin":
            reverse = false
        default:
            reverse = true
        }
        
        resultIndex = data.sortAndSearchs(eventArray: eventArray, eventMark: performanceString, reverse: reverse)
        if (resultIndex >= 94 ) {
            resultIndex = 94
        }
        event.text = eventString
        place.text = "\(resultIndex + 1)"
        
        time2017.text = _2017[resultIndex]
        time2016.text = _2016[resultIndex]
        time2015.text = _2015[resultIndex]
        time2014.text = _2014[resultIndex]

        switch eventString {
        case "800 Meters", "1500 Meters",  "3000 Meter Steeplechase",  "5,000 Meters", "10,000 Meters" :
            distanceEvents()
        case "100 Meters", "200 Meters",  "400 Meters":
            sprintEvents()
        case "4x100 Meter Relay", "4x400 Meter Relay":
            relayEvents()
        case "High Jump", "Pole Valut",  "Triple Jump",  "Long Jump":
            jumpEvents()
        case "Discus", "Shotput",  "Hammer Throw",  "Javelin":
            throwEvents()
        case "Heptahalon",  "Decathalon":
            athalonEvents()
        default: break

        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configureTopView()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureTopView()
        }
    }

    // MARK: Distance Events
    
    func distanceEvents() {
        place1.text = "\(resultIndex + 1)"
        place2.text = "\(resultIndex + 1)"
        place3.text = "\(resultIndex + 1)"
        place4.text = "\(resultIndex + 1)"
        switch eventString {
        case "3000 Meter Steeplechase":
            time.text = event_steepleTimes[resultIndex]
            time1.text = event_800mTimes[resultIndex]
            time2.text = event_1500Times[resultIndex]
            time3.text = event_5kTimes[resultIndex]
            time4.text = event_10kTimes[resultIndex]
            event1.text = "800 Meters"
            event2.text = "1500 Meters"
            event3.text = "5,000 Meters"
            event4.text = "10,000 Meters"
        case "800 Meters":
            time.text = event_800mTimes[resultIndex]
            time1.text = event_400mTimes[resultIndex]
            time2.text = event_1500Times[resultIndex]
            time3.text = event_steepleTimes[resultIndex]
            time4.text = event_5kTimes[resultIndex]
            event1.text = "400 Meters"
            event2.text = "1500 Meters"
            event3.text = "3000 Meter Steeplechase"
            event4.text = "5,000 Meters"
        case "1500 Meters":
            time.text = event_1500Times[resultIndex]
            time1.text = event_800mTimes[resultIndex]
            time2.text = event_steepleTimes[resultIndex]
            time3.text = event_5kTimes[resultIndex]
            time4.text = event_10kTimes[resultIndex]
            event1.text = "800 Meters"
            event2.text = "3000 Meter Steeplechase"
            event3.text = "5,000 Meteres"
            event4.text = "10,000 Meters"
        case "5,000 Meters":
            time.text = event_5kTimes[resultIndex]
            time1.text = event_800mTimes[resultIndex]
            time2.text = event_1500Times[resultIndex]
            time3.text = event_steepleTimes[resultIndex]
            time4.text = event_10kTimes[resultIndex]
            event1.text = "800 Meters"
            event2.text = "1500 Meters"
            event3.text = "3000 Meter Steeplechase"
            event4.text = "10,000 Meters"
        case "10,000 Meters":
            time.text = event_10kTimes[resultIndex]
            time1.text = event_800mTimes[resultIndex]
            time2.text = event_1500Times[resultIndex]
            time3.text = event_steepleTimes[resultIndex]
            time4.text = event_5kTimes[resultIndex]
            event1.text = "8000 Meters"
            event2.text = "1500 Meters"
            event3.text = "3000 Meter Steeplechase"
            event4.text = "5,000 Meters"
        default:
            print("something's wrong")
        }
    }
    
    // MARK: Sprinting Events
    
    func sprintEvents() {
        place1.text = "\(resultIndex + 1)"
        place2.text = "\(resultIndex + 1)"
        switch eventString {
        case "100 Meters":
            time.text = event_100mTimes[resultIndex]
            time1.text = event_200mTimes[resultIndex]
            time2.text = event_400mTimes[resultIndex]
            tableCell3.isHidden = true
            tableCell4.isHidden = true
            event1.text = "200 Meters"
            event2.text = "400 Meters"
        case "200 Meters":
            time.text = event_200mTimes[resultIndex]
            time1.text = event_100mTimes[resultIndex]
            time2.text = event_400mTimes[resultIndex]
            tableCell3.isHidden = true
            tableCell4.isHidden = true
            event1.text = "100 Meters"
            event2.text = "400 Meters"
        case "400 Meters":
            time.text = event_400mTimes[resultIndex]
            time1.text = event_100mTimes[resultIndex]
            time2.text = event_200mTimes[resultIndex]
            time3.text = event_800mTimes[resultIndex]
            place3.text = "\(resultIndex + 1)"
            tableCell4.isHidden = true
            event1.text = "100 Meters"
            event2.text = "200 Meters"
            event3.text = "800 Meters"
        default:
            print("something's wrong")
        }

    }
    
    // MARK: Relay Races
    
    func relayEvents() {
        place1.text = "\(resultIndex + 1)"
        
        switch eventString {
        case "4x100 Meter Relay":
            time.text = event_4x100mTimes[resultIndex]
            time1.text = event_4x400mTimes[resultIndex]
            tableCell2.isHidden = true
            tableCell3.isHidden = true
            tableCell4.isHidden = true
            event1.text = "4x400 Meter Relay"

        case "4x400 Meter Relay":
            time.text = event_4x400mTimes[resultIndex]
            time1.text = event_4x100mTimes[resultIndex]
            tableCell2.isHidden = true
            tableCell3.isHidden = true
            tableCell4.isHidden = true
            event1.text = "4x100 Meter Relay"
        default:
            print("something's wrong")
        }
        
    }
    
    // MARK: Jumping Events
    
    func jumpEvents() {
        place1.text = "\(resultIndex + 1)"
        place2.text = "\(resultIndex + 1)"
        place3.text = "\(resultIndex + 1)"
        switch eventString {
        case "Triple Jump":
            time.text = event_tripleJumpDistance[resultIndex]
            time1.text = event_longJumpDistance[resultIndex]
            time2.text = event_highJumpHeight[resultIndex]
            time3.text = event_poleVaultHeight[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Long Jump"
            event2.text = "High Jump"
            event3.text = "Pole Vault"

        case "Long Jump":
            time.text = event_longJumpDistance[resultIndex]
            time1.text = event_tripleJumpDistance[resultIndex]
            time2.text = event_highJumpHeight[resultIndex]
            time3.text = event_poleVaultHeight[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Triple Jump"
            event2.text = "High Jump"
            event3.text = "Pole Vault"
        case "High Jump":
            time.text = event_highJumpHeight[resultIndex]
            time1.text = event_tripleJumpDistance[resultIndex]
            time2.text = event_longJumpDistance[resultIndex]
            time3.text = event_poleVaultHeight[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Triple Jump"
            event2.text = "Long Jump"
            event3.text = "Pole Valut"
        case "Pole Vault":
            time.text = event_poleVaultHeight[resultIndex]
            time1.text = event_tripleJumpDistance[resultIndex]
            time2.text = event_longJumpDistance[resultIndex]
            time3.text = event_highJumpHeight[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Triple Jump"
            event2.text = "Long Jump"
            event3.text = "Triple Jump"
        default:
            print("something's wrong")
        }
        
    }
    
    // MARK: Throwing Events

    func throwEvents() {
        place1.text = "\(resultIndex + 1)"
        place2.text = "\(resultIndex + 1)"
        place3.text = "\(resultIndex + 1)"
        
        switch eventString {
        case "Javelin":
            time.text = event_javelinDistance[resultIndex]
            time1.text = event_shotputDistance[resultIndex]
            time2.text = event_discusDistance[resultIndex]
            time3.text = event_hammerDistance[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Shot Put"
            event2.text = "Discus"
            event3.text = "Hammer Throw"
        case "Shot Put":
            time.text = event_shotputDistance[resultIndex]
            time1.text = event_javelinDistance[resultIndex]
            time2.text = event_discusDistance[resultIndex]
            time3.text = event_hammerDistance[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Javelin"
            event2.text = "Discus"
            event3.text = "Hammer Throw"
        case "Discus":
            time.text = event_discusDistance[resultIndex]
            time1.text = event_javelinDistance[resultIndex]
            time2.text = event_shotputDistance[resultIndex]
            time3.text = event_hammerDistance[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Javelin"
            event2.text = "Shotput"
            event3.text = "Hammer Throw"
        case "Hammer Throw":
            time.text = event_hammerDistance[resultIndex]
            time1.text = event_javelinDistance[resultIndex]
            time2.text = event_discusDistance[resultIndex]
            time3.text = event_highJumpHeight[resultIndex]
            tableCell4.isHidden = true
            event1.text = "Javelin"
            event2.text = "Shotput"
            event3.text = "Discus"
        default:
            print("something's wrong")
        }
        
    }
    
    // MARK: Decathlon and Heptathlon
    
    func athalonEvents() {
    
        switch eventString {
        case "Heptahalon":
            time.text = event_hepthalonPoints[resultIndex]
            tableCell1.isHidden = true
            tableCell2.isHidden = true
            tableCell3.isHidden = true
            tableCell4.isHidden = true
        case "Decathalon":
            time.text = event_decathalonPoints[resultIndex]
            tableCell1.isHidden = true
            tableCell2.isHidden = true
            tableCell3.isHidden = true
            tableCell4.isHidden = true
        default:
            print("something's wrong")
        }
    
    }


}

