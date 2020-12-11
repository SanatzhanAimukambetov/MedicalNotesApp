//
//  AppDelegate.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let vc = SignInViewController()
        window?.rootViewController = vc
        
        FirebaseApp.configure()
        
        return true
    }
}

