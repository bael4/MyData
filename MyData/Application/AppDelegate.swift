//
//  AppDelegate.swift
//  MyData
//
//  Created by Баэль Рыспеков on 21/3/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?
let navigationController = UINavigationController(rootViewController: MainTableViewController())
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let navigationController = UINavigationController(rootViewController: MainTableViewController())
        if #available(iOS 13.0, *){
            navigationController.navigationBar.scrollEdgeAppearance = navigationController.navigationBar.standardAppearance
        }
      
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }




}

