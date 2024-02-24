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
    @State var orderId: String = "1"
    var types: [String] = ["starter", "maincourse", "dessert", "drinks"]
    
    @Binding var storageMeals: ManagerStorageMeals 

    
    var body: some View {
        
        ScrollView {
            EndPoint(orderId: $orderId, typeMethod: typeMethod, endPoint: "/menu/\(types[selectedIndex])", color: .blue, needId: false)
            Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
                .environmentObject(storageMeals)
               
        }.navigationTitle("Restaurant")
    }
}

//
//#Preview {
//    MethodGet(selectedIndex: .constant(0), typeMethod: "GET", storageMeals: <#Binding<ManagerStorageMeals>#>)
//}
//




