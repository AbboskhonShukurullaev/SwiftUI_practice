//
//  Constant.swift
//  Devote
//
//  Created by Abbos Shukurullaev on 07/04/22.
//

import SwiftUI

// MARK: - Formatter
let itemFormatter: DateFormatter = {
    let itemFormatter = DateFormatter()
    itemFormatter.dateStyle = .short
    itemFormatter.timeStyle = .medium
    return itemFormatter
}()

// MARK: - UI
var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

// MARK: - UX
let feedback = UINotificationFeedbackGenerator()
