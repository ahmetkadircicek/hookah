//
//  AppDelegate.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 6.12.2025.
//

import UIKit
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        
        FirebaseApp.configure()
        print("Firebase configured successfully")
        
        return true
    }
}
