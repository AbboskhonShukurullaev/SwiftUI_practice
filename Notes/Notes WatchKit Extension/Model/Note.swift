//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Abbos Shukurullaev on 24/04/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
