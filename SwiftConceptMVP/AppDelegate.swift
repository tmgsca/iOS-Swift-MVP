//
//  AppDelegate.swift
//  SwiftConceptMVP
//
//  Created by Thiago Magalhães on 27/11/2017.
//  Copyright © 2017 Thiago Magalhães. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = try! ExampleViewController.createInstance()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}
