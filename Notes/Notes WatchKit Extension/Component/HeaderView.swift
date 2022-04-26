//
//  HeaderView.swift
//  Notes WatchKit Extension
//
//  Created by Abbos Shukurullaev on 24/04/22.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Property
    var title: String = ""
    
    // MARK: - Body
    var body: some View {
        VStack {
            //TITLE
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            //SEPARATOR
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HSTACK
            .foregroundColor(.accentColor)
        } //: VSTACK
    }
}

// MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "credits")
            
            HeaderView()
        }
    }
}
