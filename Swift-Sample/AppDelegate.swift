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
        
        let appKit = "c35398a2-0ad7-43b4-af9d-1ac3f77d6955"
        let apiKey = "aEDtVKqs0G0oGY7aSUxpTQ"
        
        APRAppManager.shared().initialize(withAppKit: appKit, andApiKey: apiKey)
        
        if let rootController = self.window?.rootViewController {
            APRAppManager.shared().showUpdateAlert(on: rootController)
        }
        
        return true
    }
}

