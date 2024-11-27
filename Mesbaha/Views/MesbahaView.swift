//
//  ContentView.swift
//  Mesbaha
//
//  Created by basant amin bakir on 04/11/2024.
//

import SwiftUI
import UIKit

struct homeView: View {
    
    @StateObject private var tasbihManager = TasbihManager()
    @State private var countInput: String = ""
    @FocusState private var isFocused: Bool
    @State private var counter = 0

    var body: some View {
        VStack {
            Circle()
                .fill(Color.brown)
                .frame(width: 301, height: 301)
                .padding()
                .onTapGesture {
                    counter += 1
                    vibrate()
                }
            
            Text("\(counter)")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            Button(action: {
                counter = 0
            }) {
                Text("Reset")
                    .font(.headline)
                    .foregroundColor(.brown)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.brown, lineWidth: 2)
                    )
            }
            .padding(.bottom, 20)
            
           
            
        }
       
     
    }
    
    private func vibrate() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

#Preview {
    homeView()
}
