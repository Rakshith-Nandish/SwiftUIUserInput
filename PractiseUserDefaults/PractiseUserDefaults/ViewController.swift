//
//  ViewController.swift
//  PractiseUserDefaults
//
//  Created by Rakshith on 3/18/17.
//  Copyright © 2017 Rakshith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userDefaults = UserDefaultCommonUtil()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClickMeActionHandler(sender: UIButton) {
        //userDefaults.name = "Rakshith"
        userDefaults.setValue(5, keyName: "name1")
    }

    @IBAction func buttonGetText(sender: UIButton) {
        //print(userDefaults.name)
        print(userDefaults.getValue("name1", returnType: Int()))
    }
}

