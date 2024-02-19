//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 16/02/24.
//

import SwiftUI

struct Menu: View {
    @Binding private var selectedIndex: Int
    var types: [String] = ["Starter", "Maincourse", "Dessert", "Drinks"]
    
    let categories: [String: [ContentCategoryMenu]] = [
            "Starter": starter,
            "Maincourse": mainCourse,
            "Dessert": dessert,
            "Drinks": drinks
        ]
    
    
    
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
                            ForEach(categories[self.types[selectedIndex]] ?? starter, id: \.self ) { content in
                                
                                MenuContent(content: content)
                            }.padding(.vertical, 10)

                        }.padding(.top, 20)
                        
                    }
                }
                
            }
        }.navigationTitle("Restaurant")
    }
}

#Preview {
    Menu()
}
