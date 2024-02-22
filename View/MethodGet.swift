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
    
    var storageMeals: ManagerStorageMeals = ManagerStorageMeals(storageMeals: [])

    
    var body: some View {
        
        ScrollView {
            Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
                .environmentObject(storageMeals)
        }.navigationTitle("Restaurant")
    }
}


#Preview {
    MethodGet(selectedIndex: .constant(0), typeMethod: "GET")
}





