//
//  dataModel.swift
//  Mesbaha
//
//  Created by basant amin bakir on 24/11/2024.
//

import Foundation

struct TasbihDataModel: Identifiable {
    var id = UUID()
    var title: String
    var count: Int
    var isCompleted: Bool
}


