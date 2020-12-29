//
//  AppDelegate.swift
//  FacebookMessenger
//
//  Created by Habib Durodola on 2020-12-28.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        window?.makeKeyAndVisible()

        let layout = UICollectionViewFlowLayout()
        window?.rootViewController = UINavigationController(rootViewController: ViewController(collectionViewLayout: layout))

        return true
    }

}

