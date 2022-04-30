//
//  CardModel.swift
//  LearnByDoing
//
//  Created by Abbos Shukurullaev on 30/04/22.
//

import SwiftUI

// MARK: - CARD MODEL
struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
