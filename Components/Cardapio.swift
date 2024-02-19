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
    
    
    @State var storageMeals: [ContentCategoryMenu] = []
    
    
    var body: some View {
        ScrollView {
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
                                .padding(.leading, 20)
                            
                        }
                        .frame(width: 500, height: 200, alignment: .leading)
                        
                        HStack {
                            ForEach(types.indices, id: \.self) { index in
                                Categories(isSelected: self.selectedIndex == index, setSelectedIndex: { self.selectedIndex = index} , name: self.types[index])
                            }
                            
                        }.frame(alignment: .trailing)
                        
                        
                        VStack(alignment: .leading) {
                            ForEach(categories[self.types[selectedIndex]] ?? []) { categories in
                                MenuContent(category: categories, storageMeals: $storageMeals, typeMethod: typeMethod)
                                    .padding(.top, 10)
                                
                            }
                            
                        }.padding(.top, 20)
                        
                    }
                }
                
            }
        }.navigationTitle("Restaurant")
    }
}

#Preview {
    Cardapio(selectedIndex: .constant(0), typeMethod: "GET")
}


//ForEach(categories[self.types[selectedIndex]] ?? starter, id: \.id ) { categories in
//
//    MenuContent(categories: categories)
//}.padding(.vertical, 10)
