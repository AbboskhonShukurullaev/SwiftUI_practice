//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Abbos Shukurullaev on 28/04/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var cards: [Card] = cardData
    
    // MARK: - Content
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            } //:HSTACK
            .padding(20)
        } //: SCROLL
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
