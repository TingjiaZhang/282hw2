//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by 张廷嘉 on 5/17/21.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
