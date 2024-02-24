//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 22/02/24.
//

import SwiftUI

struct MethodDelete: View {
    @State var isShowing: Bool = false
    @Binding var storageMeals: ManagerStorageMeals
    @State var orderId: String = ""
    var typeMethod: String
    
    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    EndPoint(orderId: $orderId, typeMethod: typeMethod, endPoint: "/pedido/0001/item/", color: .red, needId: true)
                    
                    ButtonEndPoint(typeMethod: typeMethod, color: .red, icon: "trash.fill")
                        .onTapGesture {
                            storageMeals.storageMeals = storageMeals.storageMeals.filter {
                                $0.id != orderId
                                
                            }
                            
                            orderId = ""
                        }
                }
                
                Orders(isShowing: $isShowing, storageMeals: storageMeals, typeMethod: typeMethod)
            }.navigationTitle("Restaurant")
        }.onDisappear {
            storageMeals.isSave = false
        }
    }
}

//#Preview {
//    MethodDelete(storages: , isShowing: .constant(false))
//}
