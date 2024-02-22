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
    
    @Binding var storageMeals: ManagerStorageMeals 
   
    
    var body: some View {
        
        ScrollView {
            ZStack {
                VStack {
                    Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
                        .environmentObject(storageMeals)
                      
                    Button {
                        if storageMeals.storageMeals.isEmpty {
                            isShowing = false
                        } else {
                            isShowing.toggle()
                        }
                        
                        
                    } label: {
                        VStack(alignment: .center) {
                            Text("Revisar pedido")
                                .foregroundStyle(.black)
                                .font(.customFont(size: 24))
                        }.frame(width: 367, height: 66)
                            .background(Color(red: 241/255, green: 241/255, blue: 232/255))
                            .cornerRadius(15)
                            .multilineTextAlignment(.center)
                    }.sheet(isPresented: $isShowing) {
                        Orders(isShowing: $isShowing , storageMeals: storageMeals)
                    }
                }
                
                
            }
            
        }.navigationTitle("Restaurant")
        
        
    }
}

//#Preview {
//    MethodPost(selectedIndex: .constant(0), typeMethod: "POST", contentOfMethods:  Methods(name: "POST", color: .black), storageMeals: <#ManagerStorageMeals#>)
//}
