//
//  InfoViewController.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/7/18.
//  Copyright © 2018 Craig. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

  
    @IBOutlet weak var textBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadText()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadText() {
        print("this showed up")
        textBox.center = view.center;
        view.addSubview(textBox)
//        textBox.centerXAnchor.constraint(equalTo: view).isActive = true
//        textBox.centerYAnchor.constraint(equalTo: view.center.y).isActive = true
        
    }
}
