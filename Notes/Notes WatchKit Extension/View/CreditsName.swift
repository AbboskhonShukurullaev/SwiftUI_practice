//
//  CreditsName.swift
//  Notes WatchKit Extension
//
//  Created by Abbos Shukurullaev on 24/04/22.
//

import SwiftUI

struct CreditsName: View {
    // MARK: - Property
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 3) {
            //PROFILE IMAGE
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            //HEADER
            HeaderView(title: "Credits")
            
            //CONTENT
            Text("Abb Shukurullaev")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        } //: VSTACK
    }
}

// MARK: - Preview
struct CreditsName_Previews: PreviewProvider {
    static var previews: some View {
        CreditsName()
    }
}
