//
//  E_CommerceApp.swift
//  E-Commerce
//
//  Created by Abbos Shukurullaev on 20/03/22.
//

import SwiftUI

@main
struct E_CommerceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
