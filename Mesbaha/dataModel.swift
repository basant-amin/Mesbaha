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
class TasbihManager: ObservableObject {
    @Published var tasbihData: [TasbihDataModel] = [
        TasbihDataModel(title: "Tasbih 1", count: 100, isCompleted: false),
        TasbihDataModel(title: "Tasbih 2", count: 50, isCompleted: true),
        TasbihDataModel(title: "Tasbih 3", count: 70, isCompleted: true)
    ]
    
}

