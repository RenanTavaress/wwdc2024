//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 16/02/24.
//

import SwiftUI

struct MethodPost: View {
    
    @Binding var selectedIndex: Int
    var typeMethod: String
    
    var body: some View {
        Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
    }
}

#Preview {
    MethodPost(selectedIndex: .constant(0), typeMethod: "POST")
}
