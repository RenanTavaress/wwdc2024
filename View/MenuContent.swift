//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 16/02/24.
//

import SwiftUI



struct MenuContent: View {
    
    @StateObject var category: ContentCategoryMenu
    @EnvironmentObject var storageMeals: ManagerStorageMeals
    var typeMethod: String
    @State var teste: Bool = false
    
    var body: some View {
        HStack {
            if typeMethod != "GET" {
                Image(systemName: category.isChecked ? "checkmark.square.fill" :  "square")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                    .onTapGesture {
                        
                        category.isChecked.toggle()
                        if category.isChecked {
                            storageMeals.storageMeals.append(category)
                            
                        } else {
                            
                            storageMeals.storageMeals = storageMeals.storageMeals.filter {
                                $0.isChecked == true
                                
                                
                            }
                            
                            
                        }
                        
                        print(storageMeals.storageMeals)
                    }
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(category.name)
                        .font(.customFont(size: 22))
                        .lineLimit(nil)
                    
                    
                    Spacer()
                    Text(category.price)
                        .font(.customFont(size: 22))
                    
                }
                Text(category.description)
                    .font(.customFont(size: 14))
                
                
            }.foregroundColor(.black)
                .frame(width: 550, alignment: .center)
            //                .background(.red)
            
        }
    }
}



//
//#Preview {
//    MenuContent(category: ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false), storageMeals: .constant([ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]), typeMethod: "POST")
//}













