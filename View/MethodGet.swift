//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 11/02/24.
//

import SwiftUI

struct MethodGet: View {
    
    @Binding var selectedIndex: Int
    var typeMethod: String
    
    var body: some View {
        Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
    }
}


#Preview {
    MethodGet(selectedIndex: .constant(0),typeMethod: "GET")
}





