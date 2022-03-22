//
//  QuantityFavouriteDetailView.swift
//  E-Commerce
//
//  Created by Abbos Shukurullaev on 21/03/22.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - Property
    @State private var counter: Int = 0
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            } //: Button
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }) {
                Image(systemName: "plus.circle")
            } //: Button
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred() 
            }) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
        } //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

// MARK: - Preview
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
