//
//  ContentView.swift
//  Mesbaha
//
//  Created by basant amin bakir on 04/11/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Circle()
                .fill(Color.brown)
                .frame(width: 301, height: 301)
                .padding()
                .onTapGesture {
                    count += 1
                    vibrate()
                }
            
            Text("\(count)")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            Button(action: {
                count = 0
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
        }
        .padding()
        
    }
    
    private func vibrate() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

#Preview {
    ContentView()
}
