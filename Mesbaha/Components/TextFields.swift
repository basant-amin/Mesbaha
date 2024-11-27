//
//  TextFields.swift
//  Mesbaha
//
//  Created by basant amin bakir on 28/11/2024.
//

import SwiftUI

struct TextFields: View {
    @Binding var text: String
  var fieldTitle: String
    var body: some View {
        TextField(fieldTitle, text: $text)
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(Color.clear)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray),
                alignment: .bottom
            )
            .padding(.horizontal, 50)
            .multilineTextAlignment(.center)
    }
}

struct TextFields_Previews: PreviewProvider {
    @State static var sampleText = "Preview Text"  
    static var previews: some View {
        TextFields(text: $sampleText, fieldTitle: "tasbih name")
    }
}
