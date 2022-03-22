//
//  Shop.swift
//  E-Commerce
//
//  Created by Abbos Shukurullaev on 21/03/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
