//
//  FruitsApp.swift
//  Fruits
//
//  Created by Abbos Shukurullaev on 15/02/22.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var fruits: [Fruit] = fruitsData
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
            OnboardingView(fruits: fruitsData)
            } else {
                ContentView()
            }
        }
    }
}
