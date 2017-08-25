//
//  DetailViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/21/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import UIKit

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
        if pickerView == timePicker {
            return 3
        }
        else {
            return 1
        }
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->
        Int{
            if (pickerView == timePicker) {
                if component == 1 {
                    return minutes.count
                }
                else if component == 2 {
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
            if pickerView == timePicker {
                return "\(minutes[row])" + "\(seconds[row])" + "\(miliseconds[row])"
            }
            else {
            return menEventList[row]
            }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        eventString = menEventList[row]
    
    }
    
    //MARK: - Dismiss Popover
    func pickerDidFinish(){
        dismiss(animated: true, completion: nil)
    }
    

}

