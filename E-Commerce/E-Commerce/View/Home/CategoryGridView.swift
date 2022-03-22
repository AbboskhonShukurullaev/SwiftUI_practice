//
//  CategoryGridView.swift
//  E-Commerce
//
//  Created by Abbos Shukurullaev on 21/03/22.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Property
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,
                      alignment: .center,
                      spacing: columnSpacing,
                      pinnedViews: [],
                      content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: GRID
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        } //: SCROLL
    }
}

// MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
