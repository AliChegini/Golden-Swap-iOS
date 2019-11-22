//
//  AppDelegate.swift
//  GoldenSwap
//
//  Created by Ehsan on 19/11/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        //let layout = UICollectionViewFlowLayout()
        //let navBar = UINavigationController(rootViewController: ListItemsViewController(collectionViewLayout: layout))
        window?.rootViewController = UINavigationController(rootViewController: RegistrationViewController())
        
        return true
    }

}
