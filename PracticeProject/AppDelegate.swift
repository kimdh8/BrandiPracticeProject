//
//  AppDelegate.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let wireframe = HomeMainWireframe()
        wireframe.presentViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = wireframe.rootNavigationController
        window?.makeKeyAndVisible()
        
        return true
    }

}
