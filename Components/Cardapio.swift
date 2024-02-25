//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 16/02/24.
//

import SwiftUI

struct Cardapio: View {
    @Binding var selectedIndex: Int
    var typeMethod: String
    var types: [String] = ["Starter", "Maincourse", "Dessert", "Drinks"]
    
   
    
    var categories: [String: [ContentCategoryMenu]] = [
        "Starter": starter,
        "Maincourse": mainCourse,
        "Dessert": dessert,
        "Drinks": drinks
    ]
   @EnvironmentObject var storageMeals: ManagerStorageMeals
    
    var body: some View {
            VStack(alignment: .center) {
                Spacer()
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                    Image("Menu")
                    VStack {
                        HStack(spacing: 50) {
                            Image("Logo")
                                .padding(.leading, 55)
                            
                            Text("Menu")
                                .font(.customFont(size: 40))
                                .padding(.leading, 20).foregroundColor(.black)
                            
                        }
                        .frame(width: 500, height: 200, alignment: .leading)
                        
                        HStack {
                            ForEach(types.indices, id: \.self) { index in
                                Categories(isSelected: self.selectedIndex == index, setSelectedIndex: { self.selectedIndex = index} , name: self.types[index])
                                    
                                    
                            }
                            
                        }.frame(alignment: .trailing)
                        
                        
                        VStack(alignment: .leading) {
                            ForEach(categories[self.types[selectedIndex]] ?? []) { categories in
                                MenuContent(category: categories, typeMethod: typeMethod)
                                   .environmentObject(storageMeals)
                                    .padding(.top, 10)
                            }
                            
                        }.padding(.top, 20)
                            
                        
                    }
                }
                
            }.onDisappear {
                storageMeals.storageMeals.forEach { meal in
                        meal.isChecked = false
                    }
            }
            .onAppear {
                storageMeals.storageMeals = []
            }
    }
}

//#Preview {
//    Cardapio(selectedIndex: .constant(0), typeMethod: "GET", storageMeals: ).environmentObject([ContentCategoryMenu(id: "1", name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)])
//}
//
//




