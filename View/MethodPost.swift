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
    var contentOfMethods: Methods
    @State var isShowing: Bool = false
    @State var orderId: String = "12"
    
    @Binding var storageMeals: ManagerStorageMeals 
   
    
    var body: some View {
        
        ScrollView {
            ZStack {
                VStack {
                    
                    HStack {
                        EndPoint(orderId: $orderId, typeMethod: typeMethod, endPoint: "/pedido", color: .green, needId: false)
                        
                        Button {
                            if storageMeals.storageMeals.isEmpty {
                                isShowing = false
                            } else {
                                isShowing.toggle()
                            }
                            
                            
                        } label: {
                            ButtonEndPoint(typeMethod: typeMethod, color: .green, icon: "arrowshape.turn.up.right.fill")
                        }.sheet(isPresented: $isShowing) {
                            Orders(isShowing: $isShowing , storageMeals: storageMeals, typeMethod: typeMethod)
                        }
                           
                    }
                    
                    Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
                        .environmentObject(storageMeals)
                   
                }
                
                
            }
            
        }.navigationTitle("Restaurant")
        
        
    }
}

//#Preview {
//    MethodPost(selectedIndex: .constant(0), typeMethod: "POST", contentOfMethods:  Methods(name: "POST", color: .black), storageMeals: <#ManagerStorageMeals#>)
//}
