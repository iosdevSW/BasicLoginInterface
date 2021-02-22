//
//  AppDelegate.swift
//  LoginView
//
//  Created by 신상우 on 2021/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame:UIScreen.main.bounds)
        let rootViewController = UINavigationController(rootViewController: RootViewController())
      //  rootViewController.navigationItem.title = "LoginView"
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

