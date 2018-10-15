//
//  ViewController.swift
//  AppRackSample-Swift
//
//  Copyright © 2018 apprack.io. All rights reserved.
//

import UIKit
import APRFramework

class ViewController: UIViewController {
    
    @IBAction func showChangeLog() {
        let navigation = UINavigationController.init(rootViewController: APRAppManager.shared().changelogViewController)
        self.present(navigation, animated: true, completion: nil)
    }
    
    @IBAction func showImprint() {
        let navigation = UINavigationController.init(rootViewController: APRAppManager.shared().imprintViewController)
        self.present(navigation, animated: true, completion: nil)
    }
    
    @IBAction func showSettings() {
        let navigation = UINavigationController.init(rootViewController: APRAppManager.shared().settingsViewController)
        self.present(navigation, animated: true, completion: nil)
    }
    
    @IBAction func showCustomizedSettings() {
        let settingsController = APRAppManager.shared().settingsViewController
        
        // customize it
        settingsController.backgroundColor = .gray
        settingsController.cellBackgroundColor = .darkGray
        settingsController.textColor = .white
        settingsController.tintColor = .yellow
        
        // extend it
        settingsController.addSectionMargin()
        settingsController.addCell(withTitle: "Title Text")
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        imageView.image = UIImage(named: "sample")
        imageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        settingsController.addView(imageView)
        
        settingsController.addCell(withTitle: "Title Text", accessoryText: "Accessory Text") {
            print("Do something on selection.")
        }

        settingsController.addCell(withTitle: "Switch", switchValue: true) { isOn in
            print("Do something on value change. Switch is \(isOn ? "on" : "off") now.")
        }
        settingsController.addDescriptionalText("To switch the switch just switch the switch.")
        
        // present it
        let navigation = UINavigationController(rootViewController: settingsController)
        
        // In your app the navigation bar can be customized here, or prefereably using UIAppearence.
        navigation.navigationBar.barTintColor = settingsController.cellBackgroundColor
        navigation.navigationBar.tintColor = settingsController.tintColor
        navigation.navigationBar.isTranslucent = false;
        navigation.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigation.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
        self.present(navigation, animated: true, completion: nil)
    }
    
}

