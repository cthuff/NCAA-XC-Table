//
//  MasterViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

var eventString: String = ""

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
        load()
        if( d1_west_1500Times.isEmpty){
           let test = DistanceSetup.init()
           d1_west_1500Times = test.init1500()
            save()
        }
        if( d1_west_5kTimes.isEmpty){
            let test = DistanceSetup.init()
            d1_west_5kTimes = test.init5k()
            save()
        }
        if( d1_west_steepleTimes.isEmpty){
            let test = DistanceSetup.init()
            d1_west_steepleTimes = test.initSteeple()
            save()
        }
        if( d1_west_10kTimes.isEmpty){
            let test = DistanceSetup.init()
            d1_west_10kTimes = test.init10k()
            save()
        }
        
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
        if eventString != ""
        {
            eventText.text = eventString
        }
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

    // MARK: - Saving Data
    
    func save() {
        UserDefaults.standard.set(d1_west_1500Times, forKey: d1_1500_Key)
        UserDefaults.standard.set(d1_west_steepleTimes, forKey: d1_steeple_Key)
        UserDefaults.standard.set(d1_west_5kTimes, forKey: d1_5k_Key)
        UserDefaults.standard.set(d1_west_10kTimes, forKey: d1_10k_Key)
        UserDefaults.standard.synchronize()
    }
    
     // MARK: - Loading Data
    
    func load(){
        if let loadedData = UserDefaults.standard.array(forKey: d1_1500_Key) as? [String] {
            d1_west_1500Times = loadedData
        }
        if let loadedData = UserDefaults.standard.array(forKey: d1_steeple_Key) as? [String] {
            d1_west_steepleTimes = loadedData
        }
        if let loadedData = UserDefaults.standard.array(forKey: d1_5k_Key) as? [String] {
            d1_west_5kTimes = loadedData
        }
        if let loadedData = UserDefaults.standard.array(forKey: d1_10k_Key) as? [String] {
            d1_west_10kTimes = loadedData
        }
    }

}

