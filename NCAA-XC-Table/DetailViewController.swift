//
//  DetailViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var event: UITextField!
    @IBOutlet weak var place: UITextField!
    @IBOutlet weak var time: UITextField!

    @IBOutlet weak var event1: UITextField!
    @IBOutlet weak var event2: UITextField!
    @IBOutlet weak var event3: UITextField!
    @IBOutlet weak var event4: UITextField!
    
    func configureView() {
        // Update the user interface for the detail item.
        let data: DataManagement = DataManagement.init()
        let index1: Int = data.sortAndSearchs(eventArray: d1_west_steepleTimes, eventMark: performanceString)
        event.text = eventString
        place.text = "\(index1)"
        time.text = d1_west_steepleTimes[index1]
//        event1.text = d1_west_800mTimes[]
        event2.text = d1_west_1500Times[index1]
        event3.text = d1_west_5kTimes[index1]
        event4.text = d1_west_10kTimes[index1]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        configureTopView()
//        configureBottomView()
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    func distanceEvent() {
        
    }
    
    
    
}

