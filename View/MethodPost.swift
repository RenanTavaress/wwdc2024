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
    @State var isAcepeted: Bool = false
    
    @Binding var storageMeals: ManagerStorageMeals 
   
    
    var body: some View {
        
        ZStack {
            ScrollView(showsIndicators: false) {
                ZStack {
                    VStack {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("The POST method of HTTP, which is a type of request used to send data to the server. This method is used to create a resource on the server. In contrast to the GET method, which is used to consume information from the server. The POST method sends the data in the request body, which can be formatted in various types, with JSON (JavaScript Object Notation) being the most common. When you place an order at a restaurant, you are providing detailed instructions to the waiter about what you want. Therefore, POST is used to send data to the server so that it can take actions based on that information.")
                                
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Example: POST").bold()
                                Text("````www.apirestaurant/order```` would create a new order with the sent data.")
                            }

                        }.frame(width: 725)
                            .padding(.vertical, 10)
                            .multilineTextAlignment(.leading).font(.system(size: 18))
                        
                        
                        HStack {
                            EndPoint(orderId: $orderId, typeMethod: typeMethod, endPoint: "/order", color: .green, needId: false).padding(.vertical, 10)
                            
                            Button {
                                if storageMeals.storageMeals.isEmpty {
                                    isShowing = false
                                } else {
                                    isShowing.toggle()
                                }
                                
                                
                            } label: {
                                ButtonEndPoint(typeMethod: typeMethod, color: .green, icon: "arrowshape.turn.up.right.fill")
                            }.sheet(isPresented: $isShowing) {
                                Orders(isShowing: $isShowing , storageMeals: storageMeals, isAcepeted: $isAcepeted, typeMethod: typeMethod)
                                
                            }
                               
                        }
                        
                        Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
                            .environmentObject(storageMeals)
                        
                        VStack {
                            Text("Now that you're already familiar with the POST method, let's move on to the next step: the DELETE method for removal.")
                        }.frame(width: 725)
                            .padding(.vertical, 10)
                            .multilineTextAlignment(.leading).font(.system(size: 18))
                       
                    }
                    
                    
                }.opacity(!isAcepeted ? 1 : 0.3)
                
            }.navigationTitle(typeMethod)
            
            MessageStatus(show: $isAcepeted, icon: "Su", text: "OK", gradientColor: .green, circleColor: .green, details: "Order placed successfully", details2: "Status code 200")
        }
        
        
    }
}

//#Preview {
//    MethodPost(selectedIndex: .constant(0), typeMethod: "POST", contentOfMethods:  Methods(name: "POST", color: .black), storageMeals: <#ManagerStorageMeals#>)
//}
