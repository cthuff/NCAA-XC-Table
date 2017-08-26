//
//  DetailViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    
    
    @IBOutlet weak var event: UITextField!
    @IBOutlet weak var place: UITextField!
    @IBOutlet weak var time: UITextField!

    
    @IBOutlet weak var event1: UITextField!
    @IBOutlet weak var event2: UITextField!
    @IBOutlet weak var event3: UITextField!
    @IBOutlet weak var event4: UITextField!
    
    func configureView() {
        // Update the user interface for the detail item.
        event.text = eventString
        place.text = "15"
        time.text = d1_west_steepleTimes[15]
//        event1.text = d1_west_800mTimes[]
        event2.text = d1_west_1500Times[15]
        event3.text = d1_west_5kTimes[15]
        event4.text = d1_west_10kTimes[15]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

}

