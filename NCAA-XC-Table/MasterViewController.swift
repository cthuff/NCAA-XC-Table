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
    
    @IBOutlet weak var genderSelect: UISegmentedControl!
    @IBOutlet weak var divisionSelect: UISegmentedControl!
    @IBOutlet weak var regionSelect: UISegmentedControl!
    
    @IBAction func beginEdit(_ sender: Any) {
        self.performSegue(withIdentifier: "Popover", sender: self)
    }
    
    var detailViewController: DetailViewController? = nil
    var objects = [Any]()


    override func viewDidLoad() {
        super.viewDidLoad()
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
            performanceText.isEnabled = true
            performanceText.text = ""
            eventIndex = 0
        }
        else {
            performanceText.isEnabled = false
        }
    }
    
    func dataToLoad() {
        if (genderSelect.selectedSegmentIndex == 1) {
            eventIndex += 30
        }
        if (divisionSelect.selectedSegmentIndex == 1) {
            eventIndex += 5
        }
        else if (divisionSelect.selectedSegmentIndex == 2) {
            eventIndex += 10
        }
        if regionSelect.selectedSegmentIndex == 1
        {
            eventIndex += 15
        }
        print(eventIndex)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        performanceText.endEditing(true)
        performanceString = performanceText.text!
        
        if (performanceText.text != "")
        {
            dataToLoad()
        }
        
        switch eventString {
        case "1500 Meters",  "3000 Meter Steeplechase",  "5,000 Meters", "10,000 Meters" :
            let distance = DistanceSetup.init()
            distance.setup()
        case "800 Meters",  "400 Meters":
            let sprint = SprintSetup.init()
            let distance = DistanceSetup.init()
            distance.setup()
            sprint.eventSetup()
        case "100 Meters", "200 Meters" :
            let sprints = SprintSetup.init()
            sprints.eventSetup()
            
        case "4x100 Meter Relay", "4x100 Meter Relay":
            let relays = RelaySetup.init()
            relays.eventSetup()
            
        case "High Jump", "Pole Valut",  "Triple Jump",  "Long Jump":
            let jumps = JumpSetup.init()
            jumps.eventSetup()
            
        case "Discus", "Shotput",  "Hammer Throw",  "Javelin":
            let throwers = ThrowSetup.init()
            throwers.eventSetup()
            
        case "Heptahalon",  "Decathalon":
            break
            //Needs to be implemented later
        default: break
            
        }
        let data = DataManagement.init()
        data.setEventArray()

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

}

