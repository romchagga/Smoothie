//
//  SmoothieApp.swift
//  Smoothie
//
//  Created by Zohra Achour on 14/03/2021.
//

// That's for learning pull request

import SwiftUI
//import Firebase


@main
struct SmoothieApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    init() {
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        WindowGroup {
//            AddSmoothieRequestForm(smoothieListViewModel: SmoothieListViewModel())
            ContentView()
        }
    }
}


//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        print("hello :D")
//        return true
//    }
//}

//var ref: DatabaseReference!
//
//ref = Database.database().reference()
