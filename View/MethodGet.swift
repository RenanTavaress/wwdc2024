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
                    Text("The HTTP GET method is a type of request used to obtain a representation of a resource from a server (Kitchen). It's one of the most common and simple methods in HTTP. It's used solely to request data, not to send or modify it. It's like asking for a menu in a restaurant: you receive the available information.")
                  
                    Text("Every time you change a category on the menu, our endpoint also changes. Our URL would be ````www.apirestaurant.com````  and the endpoint is ````/menu/starter````. An API endpoint is a specific URL that identifies a particular resource in an API. These endpoints are used to perform operations or obtain information related to that resource. Therefore, the GET method is used only to receive information, as in the case of viewing the menu.")
                        
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
            }
               
        }.navigationTitle(typeMethod)
        
    }
}

//
//#Preview {
//    MethodGet(selectedIndex: .constant(0), typeMethod: "GET", storageMeals: <#Binding<ManagerStorageMeals>#>)
//}
//




