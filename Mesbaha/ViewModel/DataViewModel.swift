//
//  DataViewModel.swift
//  Mesbaha
//
//  Created by basant amin bakir on 24/11/2024.
//

import Foundation
class TasbihManager: ObservableObject {
    
    @Published var tasbihName: String = ""
    @Published var tasbihCount: Int = 0
    @Published var tasbihIsCompleted: Bool = false
    
    @Published var tasbihData: [TasbihDataModel] = [
        TasbihDataModel(title: "Tasbih 1", count: 100, isCompleted: false),
        TasbihDataModel(title: "Tasbih 2", count: 50, isCompleted: true),
        TasbihDataModel(title: "Tasbih 3", count: 70, isCompleted: true)
    ]
    
    
    
    
    func addTasbih() {
        let newTasbih = TasbihDataModel(title: tasbihName, count: tasbihCount, isCompleted: tasbihIsCompleted)
        tasbihData.append(newTasbih)
        resetInputs()
    }
    
    private func resetInputs() {
         tasbihName = ""
         tasbihCount = 0
         tasbihIsCompleted = false
     }
 }

