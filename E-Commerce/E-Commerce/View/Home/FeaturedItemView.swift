//
//  FeaturedItemView.swift
//  E-Commerce
//
//  Created by Abbos Shukurullaev on 21/03/22.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Property
    let player: Player
    
    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - Preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
