//
//  Settings.swift
//  Notes WatchKit Extension
//
//  Created by Abbos Shukurullaev on 25/04/22.
//

import SwiftUI

struct Settings: View {
    // MARK: - Property
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK: - Function
    func update() {
        lineCount = Int(value)
    }
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            //ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            //SLIDER
            Slider(value: Binding(get: {
                self.value
            }, set: { newValue in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        } //: VSTACK
    }
}

// MARK: - Preview
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
