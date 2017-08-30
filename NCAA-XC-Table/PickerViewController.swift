//
//  DetailViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

var eventArray = [String]()

var minutes:Array = [Int]()
var seconds = [Int]()
var miliseconds = [Int]()

class PickerViewConroller: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func makeTimer()
    {
        var x: Int = 0
        while x <= 60
        {
            minutes.append(x)
            seconds.append(x)
            x = x + 1
        }
        x = 0
        while x <= 100
        {
            miliseconds.append(x)
            x = x + 1
        }
    }

    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var eventPicker: UIPickerView!
    @IBOutlet weak var timePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTimer()
        dismissButton.addTarget(self,action: #selector(self.pickerDidFinish),for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - PickerView
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        if pickerView.tag == 1 {
            return 3
        }
        else {
            return 1
        }
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->
        Int{
            if (pickerView.tag == 1) {
                if component == 0 {
                    return minutes.count
                }
                else if component == 1 {
                    return seconds.count
                }
                else {
                    return miliseconds.count
                }
            }
            else {
            return menEventList.count
            }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->
        String? {
            if pickerView.tag == 1 {
                if component == 0 {
                    return "\(minutes[row])"
                }
                else if component == 1 {
                    return "\(seconds[row])"
                }
                else {
                    return "\(miliseconds[row])"
                }
            }
            else if pickerView.tag == 0 {
            return menEventList[row]
            }
            else {
              return ""
            }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            eventString = menEventList[row]
           /* if menEventList[row] == "800 Meters" || menEventList[row] == "1500 Meters" || menEventList[row] == "3000 Meter Steeplechase" || menEventList[row] == "5,000 Meters" || menEventList[row] == "10,000 Meters" {
                eventType = "Distance"
            }
            else if menEventList[row] == "100 Meters" || menEventList[row] == "200 Meters" || menEventList[row] == "400 Meter" {
                eventType = "Sprints"
            }
            */
        }
        else if pickerView.tag == 1 {
            performanceString = "\(minutes[row])" + ":\(seconds[row])." + "\(miliseconds[row])"
        }
    
    }
    
    //MARK: - Dismiss Popover
    func pickerDidFinish(){
        setEventArray()
        dismiss(animated: true, completion: nil)
    }
    
    func setEventArray()
    {
        switch eventString {
        case "100 Meters":
            eventArray = d1_west_100mTimes
        case "110 Meter Hurdles":
            eventArray = d1_west_110hTimes
        case "200 Meters":
            eventArray = d1_west_200mTimes
        case "400 Meters":
            eventArray = d1_west_400mTimes
        case "400 Meter Hurdles":
            eventArray = d1_west_400hTimes
        case "800 Meters":
            eventArray = d1_west_800mTimes
        case "1500 Meters":
            eventArray = d1_west_1500Times
        case "3000 Meter Steeplechase":
            eventArray = d1_west_steepleTimes
        case "5,000 Meters":
            eventArray = d1_west_5kTimes
        case "10,000 Meters":
            eventArray = d1_west_10kTimes
        case "4x100 Meter Relay":
            eventArray = d1_west_4x100mTimes
        case "4x400 Meter Relay":
            eventArray = d1_west_4x400mTimes
        case "Triple Jump":
            eventArray = d1_west_tripleJumpDistance
        case "Long Jump":
            eventArray = d1_west_longJumpDistance
        case "High Jump":
            eventArray = d1_west_highJumpHeight
        case "Pole Vault":
            eventArray = d1_west_poleVaultHeight
        case "Javelin":
            eventArray = d1_west_javelinDistance
        case "Shotput":
            eventArray = d1_west_shotputDistance
        case "Discus":
            eventArray = d1_west_discusDistance
        case "Hammer Throw":
            eventArray = d1_west_hammerDistance
        case "Decathalon":
            eventArray = d1_west_decathalonPoints
        case "Heptahalon":
            eventArray = d1_west_hepthalonPoints
        default:
            print("Why is this so fucked up?")
        }
    }
    

}

