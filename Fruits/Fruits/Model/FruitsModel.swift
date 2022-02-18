//
//  FruitsModel.swift
//  Fruits
//
//  Created by Abbos Shukurullaev on 15/02/22.
//

import SwiftUI

//MARK: - Fruits Data Model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
