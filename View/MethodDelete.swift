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
    @State var isError: Bool = false
    @State var isAcepeted: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 10) {
                        Text("The DELETE method of HTTP is a type of request used to cancel or remove a resource on the server. In this case, let's cancel a meal from our order at a restaurant. When you decide to cancel a meal at a restaurant, you're requesting the resource to be removed from the order. Similarly, the DELETE method allows you to request the removal of a specific resource on the server. It's like asking the restaurant to completely discard your meal.")
                            
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Example: DELETE").bold()
                            Text("````www.apirestaurant.com/order/0001/items/1```` Each meal has an ````id````, in this case, you should choose the meal to be canceled from the order. In this example, the canceled meal would be the one with ````id```` 1. Click on ````{id}```` and type the id of the meal you wish to cancel.")
                        }

                    }.frame(width: 725)
                        .padding(.vertical, 10)
                        .multilineTextAlignment(.leading).font(.system(size: 18))
                    
                    
                    
                    
                    HStack {
                        EndPoint(orderId: $orderId, typeMethod: typeMethod, endPoint: "/pedido/0001/item/", color: .red, needId: true)
                        
                        ButtonEndPoint(typeMethod: typeMethod, color: .red, icon: "trash.fill")
                            .onTapGesture {
                                withAnimation {
                                    if !storageMeals.storageMeals.contains(where: {$0.id == orderId}) {
                                        isError.toggle()
                                    } else {
                                        isAcepeted.toggle()
                                    }
                                }
                                
                                storageMeals.storageMeals = storageMeals.storageMeals.filter {
                                    
                                    
                                    $0.id != orderId
                                    
                                }
                                
                                orderId = ""
                            }
                    }
                    
                    Orders(isShowing: $isShowing, storageMeals: storageMeals, isAcepeted: $isAcepeted, typeMethod: typeMethod)
                    
                    
                    
                    
                }.navigationTitle(typeMethod)
                
            }.onDisappear {
                storageMeals.isSave = false
            }
            .opacity((isError || isAcepeted) ? 0.3 : 1)
            MessageStatus(show: $isError, icon: "Er3", text: "Error", gradientColor: .red, circleColor: .red, details: "Meal not found", details2: "Error 404")
            MessageStatus(show: $isAcepeted, icon: "Su", text: "OK", gradientColor: .green, circleColor: .green, details: "Meal successfully canceled", details2: "Status code 200")
        }
    }
}

//#Preview {
//    MethodDelete(storages: , isShowing: .constant(false))
//}
