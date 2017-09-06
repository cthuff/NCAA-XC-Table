//
//  MasterViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

var eventString: String = ""
var performanceString: String = ""

class MasterViewController: UITableViewController, UITextFieldDelegate{

    
    @IBOutlet weak var eventText: UITextField!
    @IBOutlet weak var performanceText: UITextField!
    
    
    @IBAction func beginEdit(_ sender: Any) {
        self.performSegue(withIdentifier: "Popover", sender: self)
    }
    
    var detailViewController: DetailViewController? = nil
    var objects = [Any]()


    override func viewDidLoad() {
        super.viewDidLoad()
//        load()
        
        eventText.allowsEditingTextAttributes = false
        // Do any additional setup after loading the view, typically from a nib.

        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
        if eventString != "" {
            eventText.text = eventString
        }
        if performanceString != "" {
            performanceText.text = performanceString
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        performanceText.endEditing(true)
        performanceString = performanceText.text!
        switch eventString {
        case "800 Meters", "1500 Meters",  "3000 Meter Steeplechase",  "5,000 Meters", "10,000 Meters" :
            let sprint = SprintSetup.init()
            let distance = DistanceSetup.init()
            distance.setup()
            sprint.setup()
        case "100 Meters", "200 Meters",  "400 Meters":
            let sprints = SprintSetup.init()
            sprints.setup()
            
        case "4x100 Meter Relay", "4x100 Meter Relay":
            let relays = RelaySetup.init()
            relays.setup()
            
        case "High Jump", "Pole Valut",  "Triple Jump",  "Long Jump":
            let jumps = JumpSetup.init()
            jumps.setup()
            
        case "Discus", "Shotput",  "Hammer Throw",  "Javelin":
            let throwers = ThrowSetup.init()
            throwers.setup()
            
        case "Heptahalon",  "Decathalon":
            break
        default: break
            
        }
        setEventArray()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! NSDate
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    func setEventArray()
    {
        switch eventString {
        case "100 Meters":
            let csv = Bundle.main.url(forResource: "100FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_100mTimes
        case "110 Meter Hurdles":
            let csv = Bundle.main.url(forResource: "110HFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_110hTimes
        case "200 Meters":
            let csv = Bundle.main.url(forResource: "200FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_200mTimes
        case "400 Meters":
            let csv = Bundle.main.url(forResource: "400FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_400mTimes
        case "400 Meter Hurdles":
            let csv = Bundle.main.url(forResource: "400HFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_400hTimes
        case "800 Meters":
            let csv = Bundle.main.url(forResource: "800FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_800mTimes
        case "1500 Meters":
            let csv = Bundle.main.url(forResource: "1500FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_1500Times
        case "3000 Meter Steeplechase":
            let csv = Bundle.main.url(forResource: "SteepleFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_steepleTimes
        case "5,000 Meters":
            let csv = Bundle.main.url(forResource: "5kFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_5kTimes
        case "10,000 Meters":
            let csv = Bundle.main.url(forResource: "10kFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_10kTimes
        case "4x100 Meter Relay":
            let csv = Bundle.main.url(forResource: "4x100FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_4x100mTimes
        case "4x400 Meter Relay":
            let csv = Bundle.main.url(forResource: "4x400FirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_4x400mTimes
        case "Triple Jump":
            let csv = Bundle.main.url(forResource: "TripleJumpFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_tripleJumpDistance
        case "Long Jump":
            let csv = Bundle.main.url(forResource: "LongJumpFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_longJumpDistance
        case "High Jump":
            let csv = Bundle.main.url(forResource: "HighJumpFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_highJumpHeight
        case "Pole Vault":
            let csv = Bundle.main.url(forResource: "PoleVaultFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_poleVaultHeight
        case "Javelin":
            let csv = Bundle.main.url(forResource: "JevelinFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_javelinDistance
        case "Shotput":
            let csv = Bundle.main.url(forResource: "ShotPutFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_shotputDistance
        case "Discus":
            let csv = Bundle.main.url(forResource: "DiscusFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_discusDistance
        case "Hammer Throw":
            let csv = Bundle.main.url(forResource: "HammerThrowFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_hammerDistance
        case "Decathlon":
            let csv = Bundle.main.url(forResource: "DecathlonFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_decathalonPoints
        case "Heptahlon":
            let csv = Bundle.main.url(forResource: "HeptathlonFirstRound", withExtension: "csv")
            let text = try! String(contentsOf: csv!)
            var lines = text.components(separatedBy: "\r\n")
            lines.remove(at: 95)
            for line in lines {
                let split = line.components(separatedBy: "\t")
                _2017.append(split[3])
                _2016.append(split[2])
                _2015.append(split[1])
                _2014.append(split[0])
            }
            eventArray = men_hepthalonPoints
        default:
            print("Why is this so fucked up?")
        }
    }
    

    
    // MARK: - Saving Data
    
    func save() {
        UserDefaults.standard.set(men_800mTimes, forKey: men_800_key)
        UserDefaults.standard.set(men_1500Times, forKey: men_1500_Key)
        UserDefaults.standard.set(men_steepleTimes, forKey: men_steeple_Key)
        UserDefaults.standard.set(men_5kTimes, forKey: men_5k_Key)
        UserDefaults.standard.set(men_10kTimes, forKey: men_10k_Key)
        UserDefaults.standard.synchronize()
    }
    
//     // MARK: - Loading Data
//    
//    func load(){
//        if let loadedData = UserDefaults.standard.array(forKey: men_800_key) as? [String] {
//            men_800mTimes = loadedData
//        }
//        if let loadedData = UserDefaults.standard.array(forKey: men_1500_Key) as? [String] {
//            men_1500Times = loadedData
//        }
//        if let loadedData = UserDefaults.standard.array(forKey: men_steeple_Key) as? [String] {
//            men_steepleTimes = loadedData
//        }
//        if let loadedData = UserDefaults.standard.array(forKey: men_5k_Key) as? [String] {
//            men_5kTimes = loadedData
//        }
//        if let loadedData = UserDefaults.standard.array(forKey: men_10k_Key) as? [String] {
//            men_10kTimes = loadedData
//        }
//    }

}

