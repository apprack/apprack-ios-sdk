//
//  AppDelegate.swift
//  AppRackSample-Swift
//
//  Copyright © 2018 apprack.io. All rights reserved.
//

import UIKit
import APRFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let appKit = "415a4162-f52a-4b7b-bc02-b582e535dc56"
        let apiKey = "4vzHzK6WaUsnonCG715QYQ"
        
        APRAppManager.shared().initialize(withAppKit: appKit, andApiKey: apiKey)
        
        if let rootController = self.window?.rootViewController {
            APRAppManager.shared().showUpdateAlert(on: rootController)
        }
        
        return true
    }
}

