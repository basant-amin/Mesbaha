//
//  AddTasbehaView.swift
//  Mesbaha
//
//  Created by basant amin bakir on 27/11/2024.
//

import SwiftUI

struct AddTasbehaView: View {
    @StateObject private var tasbihManager = TasbihManager()
    @State private var countInput: String = ""
    @FocusState private var isFocused: Bool
    var body: some View {
 
        ZStack {
            Color.lighter
                         .ignoresSafeArea()
            VStack {
                
                TextFields(text: $tasbihManager.tasbihName, fieldTitle: "tasbih name")
                
                
                TextFields(text:  Binding(
                    get: { countInput },
                    set: {
                        countInput = $0
                        if let count = Int($0) {
                            tasbihManager.tasbihCount = count
                        }else {
                            tasbihManager.tasbihCount = 0
                        }
                    }
                ), fieldTitle: "Enter Count")

                    .multilineTextAlignment(.center)
                         .keyboardType(.numberPad)
                         .focused($isFocused)
                    .padding(.bottom, 20)
                
                Button(action: {
                    tasbihManager.addTasbih()
                    countInput = ""
                    isFocused = false
                }) {
                    Text("Add Tasbih")
                }
                .padding()
                .border(Color.brownies, width: 1)
                
                .padding(.bottom,20)
                ForEach(tasbihManager.tasbihData){tasbih in
                    HStack{
                        Text(tasbih.title)
                            .font(.headline)
                        Spacer()
                        Spacer()
                        
                        Text("\(tasbih.count)")
                        
                        Spacer()
                        if tasbih.isCompleted {
                            Image(systemName: "checkmark.circle.fill")
                        } else {
                            Image(systemName: "circle")
                        }
                    }
                    .padding(15)
                    .background(Color.darkLight)
                    .cornerRadius(20)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10)
                    
                }
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                    
                    
            }
        }
        
    }}

#Preview {
    AddTasbehaView()
}
