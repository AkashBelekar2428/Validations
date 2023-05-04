//
//  AppDelegate.swift
//  Validations
//
//  Created by Akash Belekar on 03/05/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = MainViewController.init()
        self.window?.makeKeyAndVisible()
        return true
    }

   
}

