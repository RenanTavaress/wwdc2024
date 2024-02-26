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
    @State var isShowing: Bool = false
    
    @Binding var storageMeals: ManagerStorageMeals 

    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack(alignment: .center) {
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("The GET method is used only to receive information and not to send or modify. It's like asking for a menu at a restaurant: you receive the available information. The GET method is one of the most common and simple methods of HTTP.")
                  
                    Text("Every time you change the menu category, our endpoint also changes, our URL would be ````www.apirestaurant.com```` and the endpoint is ````/menu/starter````. These endpoints are used to perform operations or obtain information related to that resource.")
                        
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Example: GET").bold()
                        Text("````www.apirestaurant/menu/starter```` you receive information about starters")
                        Text("````www.apirestaurant/menu/maincourse```` you receive information about main courses")
                        Text("````www.apirestaurant/menu/dessert```` you receive information about desserts")
                        Text("````www.apirestaurant/menu/drinks```` you receive information about drinks")
                    }
                     
                    
                   
                }.frame(width: 725)
                    .padding(.vertical, 20)
                    .multilineTextAlignment(.leading).font(.system(size: 18))
                
               
                EndPoint(orderId: $orderId, typeMethod: typeMethod, endPoint: "/menu/\(types[selectedIndex])", color: .blue, needId: false).padding(.vertical)
                
                Cardapio(selectedIndex: $selectedIndex, typeMethod: typeMethod)
                    .environmentObject(storageMeals)
                
                
                VStack {
                    Text("Now that you've learned the GET method, let's move on to the next method of making a request: the POST method.")
                }.frame(width: 725)
                    .padding(.vertical, 20)
                    .multilineTextAlignment(.leading).font(.system(size: 18))
                
            }
               
        }.navigationTitle(typeMethod)
        
    }
}

//
//#Preview {
//    MethodGet(selectedIndex: .constant(0), typeMethod: "GET", storageMeals: <#Binding<ManagerStorageMeals>#>)
//}
//




