//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 16/02/24.
//

import SwiftUI



struct MenuContent: View {
    
    @StateObject var category: ContentCategoryMenu
    @Binding var storageMeals: [ContentCategoryMenu]
    var typeMethod: String
    
    var body: some View {
        HStack {
            if typeMethod != "GET" {
                Image(systemName: category.isChecked ? "checkmark.square.fill" :  "square")
                    .font(.system(size: 30))
                    .onTapGesture {
                        category.isChecked.toggle()
                        if category.isChecked {
                            storageMeals.append(category)
                        } else {
                            storageMeals = storageMeals.filter {
                                $0.isChecked == true
                            }
                        }
                    }
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(category.name)
                        .font(.customFont(size: 24))
                    Text(category.dot)
                        .font(.customFont(size: 24))
                    Text(category.price)
                        .font(.customFont(size: 24))
                }
                Text(category.description)
                    .font(.customFont(size: 14))
            }
            
        }
    }
}



#Preview {
    MenuContent(category: ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false), storageMeals: .constant([ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]), typeMethod: "POST")
}













