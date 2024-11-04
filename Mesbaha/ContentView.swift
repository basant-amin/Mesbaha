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
                .frame(width: 300, height: 300)
                .padding()
                .onTapGesture {
                    count += 1
                    vibrate()
                }
            Text("\(count)")
                .font(.largeTitle)
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
