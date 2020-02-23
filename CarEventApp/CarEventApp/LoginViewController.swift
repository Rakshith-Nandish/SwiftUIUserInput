//
//  ViewController.swift
//  CarEventApp
//
//  Created by Rakshith on 11/26/17.
//  Copyright © 2017 Rakshith. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController,GIDSignInUIDelegate {

    @IBOutlet weak var buttonSignInGoogle: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

