//
//  ViewController.swift
//  CoreDataTest
//
//  Created by Rakshith on 4/15/17.
//  Copyright © 2017 Rakshith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewSample: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let height = textViewSample.contentSize.height
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

