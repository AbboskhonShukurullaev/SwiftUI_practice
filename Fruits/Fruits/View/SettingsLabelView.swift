//
//  LabelView.swift
//  Fruits
//
//  Created by Abbos Shukurullaev on 17/02/22.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - properties
    var labelText: String
    var labelImage: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frucus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
