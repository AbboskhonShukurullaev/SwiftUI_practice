//
//  PageModel.swift
//  PinchApp
//
//  Created by Abbos Shukurullaev on 15/02/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
