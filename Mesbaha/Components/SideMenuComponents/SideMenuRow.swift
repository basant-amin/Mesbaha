//
//  sideMenuRow.swift
//  Mesbaha
//
//  Created by basant amin bakir on 04/12/2024.
//

import SwiftUI

struct SideMenuRow: View {
    let option: SideMenuOptionModel
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            Spacer()
            
        }.padding(.leading)
            .frame(height:44)
    }
}

#Preview {
    SideMenuRow(option: .dashboard)
}
