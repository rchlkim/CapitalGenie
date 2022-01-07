//
//  genieApp.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/5/22.
//

import SwiftUI
import Firebase

@main
struct genieApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
