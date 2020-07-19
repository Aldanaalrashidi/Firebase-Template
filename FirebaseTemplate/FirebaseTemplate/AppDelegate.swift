//
//  AppDelegate.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 5/9/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit
import Firebase

let SIXTH_GRADE = "الصف السادس"
let SEVENTH_GRADE = "الصف السابع"
let EIGHTH_GRADE = "الصف الثامن"
let NINTH_GRADE = "الصف التاسع"
let TENTH_GRADE = "الصف العاشر"
let ELEVENTH_GRADE = "الصف الحادي عشر"
let TWELVETH_GRADE = "الصف الثاني عشر"

let ARABIC = "اللغة العربية"
let ENGLISH = "اللغة الانجليزية"
let MATH = "رياضيات"
let ISLAM = "اسلامية"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        // initiallyCreateFirebaseItems()
        return true
    }
    func initiallyCreateFirebaseItems(){
        for grade in grades{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                for subject in grade.subjects{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        Networking.createItem(subject, inCollection: "\(grade.title)", withDocumentId: "\(subject.title)") {
                            print("Yuppee")
                        }
                    }
                }
            }
        }
    }
    
    func reloadData(){
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

