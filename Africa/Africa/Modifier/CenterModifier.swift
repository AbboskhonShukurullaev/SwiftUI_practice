//
//  CenterModifier.swift
//  Africa
//
//  Created by Abbos Shukurullaev on 17/03/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
