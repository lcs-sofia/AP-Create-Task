//
//  AP_Create_TaskApp.swift
//  Shared
//
//  Created by Sofia Andrade on 2022-03-25.
//

import SwiftUI

@main
struct AP_Create_TaskApp: App {
    
    @StateObject var store = InformationStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                InformationDetail(session: Information.example)
            }
            
        }
    }
}
