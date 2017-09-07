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

    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var eventPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
            return eventEventList.count
            
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->
        String? {
            return eventEventList[row]
            
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            eventString = eventEventList[row]

    }
    
    //MARK: - Dismiss Popover
    func pickerDidFinish(){
        dismiss(animated: true, completion: nil)
    }
    
    
}

