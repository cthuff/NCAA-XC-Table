//
//  DetailViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var index1: Int = 0

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
    
    
    func configureTopView() {
        // Update the user interface for the detail item.
        let data: DataManagement = DataManagement.init()
        index1 = data.sortAndSearchs(eventArray: eventArray, eventMark: performanceString)
        event.text = eventString
        place.text = "\(index1 + 1)"
        
        time2017.text = _2017[index1]
        time2016.text = _2016[index1]
        time2015.text = _2015[index1]
        time2014.text = _2014[index1]

        switch eventString {
        case "800 Meters", "1500 Meters",  "3000 Meter Steeplechase",  "5,000 Meters", "10,000 Meters" :
            distanceEvents()
        case "100 Meters", "200 Meters",  "400 Meter Steeplechase":
            sprintEvents()
        case "4x100 Meter Relay", "4x100 Meter Relay":
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
        // Do any additional setup after loading the view, typically from a nib.
//        configureBottomView()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configureTopView()
        //        configureBottomView()
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

    func distanceEvents() {
        place1.text = "\(index1 + 1)"
        place2.text = "\(index1 + 1)"
        place3.text = "\(index1 + 1)"
        place4.text = "\(index1 + 1)"
        switch eventString {
        case "3000 Meter Steeplechase":
            time.text = d1_west_steepleTimes[index1]
//            time1.text = d1_west_800mTimes[index1]
            time2.text = d1_west_1500Times[index1]
            time3.text = d1_west_5kTimes[index1]
            time4.text = d1_west_10kTimes[index1]
            event1.text = "800 Meters"
            event2.text = "1500 Meters"
            event3.text = "5,000 Meters"
            event4.text = "10,000 Meters"
        case "800 Meters":
            time.text = d1_west_800mTimes[index1]
            time1.text = d1_west_400mTimes[index1]
            time2.text = d1_west_1500Times[index1]
            time3.text = d1_west_steepleTimes[index1]
            time4.text = d1_west_5kTimes[index1]
            event1.text = "400 Meters"
            event2.text = "1500 Meters"
            event3.text = "3000 Meter Steeplechase"
            event4.text = "5,000 Meters"
        case "1500 Meters":
            time.text = d1_west_1500Times[index1]
//            time1.text = d1_west_800mimes[index1]
            time2.text = d1_west_steepleTimes[index1]
            time3.text = d1_west_5kTimes[index1]
            time4.text = d1_west_10kTimes[index1]
            event1.text = "800 Meters"
            event2.text = "3000 Meter Steeplechase"
            event3.text = "5,000 Meteres"
            event4.text = "10,000 Meters"
        case "5,000 Meters":
            time.text = d1_west_5kTimes[index1]
//            time1.text = d1_west_800mTimes[index1]
            time2.text = d1_west_1500Times[index1]
            time3.text = d1_west_steepleTimes[index1]
            time4.text = d1_west_10kTimes[index1]
            event1.text = "800 Meters"
            event2.text = "1500 Meters"
            event3.text = "3000 Meter Steeplechase"
            event4.text = "10,000 Meters"
        case "10,000 Meters":
            time.text = d1_west_10kTimes[index1]
//            time1.text = d1_west_800mTimes[index1]
            time2.text = d1_west_1500Times[index1]
            time3.text = d1_west_steepleTimes[index1]
            time4.text = d1_west_5kTimes[index1]
            event1.text = "8000 Meters"
            event2.text = "1500 Meters"
            event3.text = "3000 Meter Steeplechase"
            event4.text = "5,000 Meters"
        default:
            print("something's wrong")
        }
    }
    
    func sprintEvents() {
        place1.text = "\(index1 + 1)"
        place2.text = "\(index1 + 1)"
        switch eventString {
        case "100 Meters":
            time.text = d1_west_100mTimes[index1]
            time1.text = d1_west_200mTimes[index1]
            time2.text = d1_west_400mTimes[index1]
            tableCell3.isHidden = true
            tableCell4.isHidden = true
            event1.text = "200 Meters"
            event2.text = "400 Meters"
        case "200 Meters":
            time.text = d1_west_200mTimes[index1]
            time1.text = d1_west_100mTimes[index1]
            time2.text = d1_west_400mTimes[index1]
            tableCell3.isHidden = true
            tableCell4.isHidden = true
            event1.text = "100 Meters"
            event2.text = "400 Meters"
        case "400 Meters":
            time.text = d1_west_400mTimes[index1]
            time1.text = d1_west_100mTimes[index1]
            time2.text = d1_west_200mTimes[index1]
            time3.text = d1_west_800mTimes[index1]
            place3.text = "\(index1 + 1)"
            tableCell4.isHidden = true
            event1.text = "100 Meters"
            event2.text = "200 Meters"
            event3.text = "800 Meters"
        default:
            print("something's wrong")
        }

    }
    
    func relayEvents() {
        place1.text = "\(index1 + 1)"
        func sprintEvents() {
            switch eventString {
            case "4x100 Meter Relay":
                time.text = d1_west_4x100mTimes[index1]
                time1.text = d1_west_4x400mTimes[index1]
                tableCell2.isHidden = true
                tableCell3.isHidden = true
                tableCell4.isHidden = true
                event1.text = "4x400 Meter Relay"

            case "4x400 Meter Relay":
                time.text = d1_west_4x400mTimes[index1]
                time1.text = d1_west_4x100mTimes[index1]
                tableCell2.isHidden = true
                tableCell3.isHidden = true
                tableCell4.isHidden = true
                event1.text = "4x100 Meter Relay"
            default:
                print("something's wrong")
            }
            
        }
    }
    
    func jumpEvents() {
        place1.text = "\(index1 + 1)"
        place2.text = "\(index1 + 1)"
        place3.text = "\(index1 + 1)"
        switch eventString {
        case "Triple Jump":
            time.text = d1_west_tripleJumpDistance[index1]
            time1.text = d1_west_longJumpDistance[index1]
            time2.text = d1_west_highJumpHeight[index1]
            time3.text = d1_west_poleVaultHeight[index1]
            tableCell4.isHidden = true
            event1.text = "Long Jump"
            event2.text = "High Jump"
            event3.text = "Pole Vault"

        case "Long Jump":
            time.text = d1_west_longJumpDistance[index1]
            time1.text = d1_west_tripleJumpDistance[index1]
            time2.text = d1_west_highJumpHeight[index1]
            time3.text = d1_west_poleVaultHeight[index1]
            tableCell4.isHidden = true
            event1.text = "Triple Jump"
            event2.text = "High Jump"
            event3.text = "Pole Vault"
        case "High Jump":
            time.text = d1_west_highJumpHeight[index1]
            time1.text = d1_west_tripleJumpDistance[index1]
            time2.text = d1_west_longJumpDistance[index1]
            time3.text = d1_west_poleVaultHeight[index1]
            tableCell4.isHidden = true
            event1.text = "Triple Jump"
            event2.text = "Long Jump"
            event3.text = "Pole Valut"
        case "Pole Vault":
            time.text = d1_west_poleVaultHeight[index1]
            time1.text = d1_west_tripleJumpDistance[index1]
            time2.text = d1_west_longJumpDistance[index1]
            time3.text = d1_west_highJumpHeight[index1]
            tableCell4.isHidden = true
            event1.text = "Triple Jump"
            event2.text = "Long Jump"
            event3.text = "Triple Jump"
        default:
            print("something's wrong")
        }
        
    }

    func throwEvents() {
        place1.text = "\(index1 + 1)"
        place2.text = "\(index1 + 1)"
        place3.text = "\(index1 + 1)"
        
        switch eventString {
        case "Javelin":
            time.text = d1_west_javelinDistance[index1]
            time1.text = d1_west_shotputDistance[index1]
            time2.text = d1_west_discusDistance[index1]
            time3.text = d1_west_hammerDistance[index1]
            tableCell4.isHidden = true
            event1.text = "Shotput"
            event2.text = "Discus"
            event3.text = "Hammer Throw"
        case "Shotput":
            time.text = d1_west_shotputDistance[index1]
            time1.text = d1_west_javelinDistance[index1]
            time2.text = d1_west_discusDistance[index1]
            time3.text = d1_west_hammerDistance[index1]
            tableCell4.isHidden = true
            event1.text = "Javelin"
            event2.text = "Discus"
            event3.text = "Hammer Throw"
        case "Discus":
            time.text = d1_west_discusDistance[index1]
            time1.text = d1_west_javelinDistance[index1]
            time2.text = d1_west_shotputDistance[index1]
            time3.text = d1_west_hammerDistance[index1]
            tableCell4.isHidden = true
            event1.text = "Javelin"
            event2.text = "Shotput"
            event3.text = "Hammer Throw"
        case "Hammer Throw":
            time.text = d1_west_hammerDistance[index1]
            time1.text = d1_west_javelinDistance[index1]
            time2.text = d1_west_discusDistance[index1]
            time3.text = d1_west_highJumpHeight[index1]
            tableCell4.isHidden = true
            event1.text = "Javelin"
            event2.text = "Shotput"
            event3.text = "Discus"
        default:
            print("something's wrong")
        }
        
    }
    
    func athalonEvents() {
        func sprintEvents() {
            switch eventString {
            case "Heptahalon":
                time.text = d1_west_hepthalonPoints[index1]
                tableCell1.isHidden = true
                tableCell2.isHidden = true
                tableCell3.isHidden = true
                tableCell4.isHidden = true
            case "Decathalon":
                time.text = d1_west_decathalonPoints[index1]
                tableCell1.isHidden = true
                tableCell2.isHidden = true
                tableCell3.isHidden = true
                tableCell4.isHidden = true
            default:
                print("something's wrong")
            }
            
        }
    }


}

