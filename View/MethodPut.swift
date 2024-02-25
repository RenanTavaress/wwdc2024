//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 24/02/24.
//

import SwiftUI

struct MethodPut: View {
    @State var isShowing: Bool = false
    @State var orderId: String = "1"
    @Binding var storageMeals: ManagerStorageMeals 
    @Binding var selectedIndex: Int
    var typeMethod: String
    
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    EndPoint(orderId: $orderId, typeMethod: "PUT", endPoint: "/pedido/0001/itens", color: .yellow, needId: false)
                    
                    Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
                        .environmentObject(storageMeals)
                }
                
                   
            }.navigationTitle(typeMethod)
        }
    }
}

//#Preview {
//    MethodPut(storageMeals: .constant(sto), selectedIndex: .constant(1), typeMethod: "PUT")
//}
