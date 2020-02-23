//
//  AppDelegate.swift
//  CarEventApp
//
//  Created by Rakshith on 11/26/17.
//  Copyright © 2017 Rakshith. All rights reserved.
//

import UIKit
import GoogleSignIn
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,GIDSignInDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        GIDSignIn.sharedInstance().clientID = "330403642720-mv3cahh6je0m5hmhmpjbutroriuksuli.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().delegate = self

        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
    }
    
    public func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!)
    {
        if (error == nil)
        {
            let userId = user.userID // For client-side use only!
            let idToken = user.authentication.idToken //Safe to send to the server
            let name = user.profile.name
            let email = user.profile.email
            let userImageURL = user.profile.imageURL(withDimension: 200).description
            
            //save value to userDefaults.
            CommonHelpers.instance.setValue(value: userId, keyName: Constants.UserDefaults.userId)
            CommonHelpers.instance.setValue(value: name, keyName: Constants.UserDefaults.userName)
            CommonHelpers.instance.setValue(value: email, keyName: Constants.UserDefaults.userEmail)
            CommonHelpers.instance.setValue(value: userImageURL, keyName: Constants.UserDefaults.userImage)
            
            //set HomeView Controller as base
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let homeViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            let hamburgerMenuController = storyBoard.instantiateViewController(withIdentifier: "HamburgerMenuController") as! HamburgerMenuController
            
            let homeNavigationController = UINavigationController(rootViewController: homeViewController)
            
            let slideMenuController = SlideMenuController(mainViewController: homeNavigationController, leftMenuViewController: hamburgerMenuController)
            
            window?.rootViewController = slideMenuController
            window?.makeKeyAndVisible()
        }else {
            print("Error login")
        }
        
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

