//
//  CreditsView.swift
//  Africa
//
//  Created by Abbos Shukurullaev on 17/03/22.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright @ Abboskhon Shukurullaev
    All rights reserved
    Better apps ♡ less code
    """)
                .font(.footnote)
            .multilineTextAlignment(.center)
        } //:VSTACK
        .padding()
        .opacity(0.4)
        
    }
}
//MARK: - Preview
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
