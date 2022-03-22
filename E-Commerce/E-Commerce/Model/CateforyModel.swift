//
//  CateforyModel.swift
//  E-Commerce
//
//  Created by Abbos Shukurullaev on 21/03/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
