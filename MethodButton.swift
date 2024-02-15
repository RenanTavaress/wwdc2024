//
//  MethodButton.swift
//  wwdc2024
//
//  Created by Renan Tavares on 11/02/24.
//

import SwiftUI

struct MethodButton: View {
    
    var paramsMethods: Methods

    var body: some View {
        HStack {
            Text(paramsMethods.name)
                .foregroundColor(paramsMethods.color)
                .fontWeight(.medium)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.primary.opacity(0.5))
        }
        .padding(.horizontal, 25)
        .padding(.vertical, 20)
        
       
        if !(methodsCategories.last?.id == paramsMethods.id) {
            Divider()
        }
        
        
            
            
    }
}

#Preview {
    MethodButton(paramsMethods: Methods(name: "GET", color: .blue))
}
