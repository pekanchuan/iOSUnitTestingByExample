//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by 贾发 on 2021/4/11.
//

import UIKit

@objc(TestingAppDelegate)

class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("<< Launching with testing app delegate")
        return true
    }

}
