//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 20/02/24.
//

import SwiftUI

struct Orders: View {
    @Binding var isShowing: Bool
    
    @StateObject var storageMeals: ManagerStorageMeals
    @Binding var isAcepeted: Bool
    
    var typeMethod: String?
    
    var body: some View {
        VStack {
            ZStack {
                Image("Orders")
                
                if (storageMeals.isSave && typeMethod == "DELETE") || typeMethod == "POST" {
                    
                    VStack(alignment: .leading) {
                        ScrollView(showsIndicators: false) {
                            VStack(alignment: .leading) {
                                Text(!storageMeals.storageMeals.isEmpty ?  "    {" : "")
                                    .font(.system(size: 18))
                                
                                ForEach(storageMeals.storageMeals) { meals in
                                    Text("{").padding(.leading, 35).font(.system(size: 20))
                                    
                                    Text("'id': '\(meals.id)',")
                                        .padding(.leading, 50)
                                        .font(.system(size: 18))
                                    
                                    Text("'meal': '\(meals.name)',")
                                        .padding(.leading, 50)
                                        .font(.system(size: 18))
                                    
                                    Text("'price': '\(meals.price)',")
                                        .padding(.leading, 50)
                                        .font(.system(size: 20))
                                    Text("},").padding(.leading, 35 )
                                        .font(.system(size: 18))
                                }
                                Text(!storageMeals.storageMeals.isEmpty ? "    }" : "").font(.system(size: 18))
                            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                    }.frame(width: 550, height: 570)
                        .padding(.top, 100)
                        .foregroundColor(.black)
                    
                }
            }
            
            
            if typeMethod == "POST" {
                VStack(alignment: .center) {
                    
                    Text("Send order")
                        .foregroundStyle(.black)
                        .font(.customFont(size: 24))
                    
                }.frame(width: 367, height: 66)
                    .background(Color(red: 241/255, green: 241/255, blue: 232/255))
                    .cornerRadius(15)
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        isShowing.toggle()
                        storageMeals.isSave = true
                        
                        withAnimation(.linear.delay(0.3)) {
                            if !isShowing {
                                isAcepeted.toggle()
                            }
                        }
                    }
            }
            
            
        }
        
    }
}

#Preview {
    Orders(isShowing: .constant(false), storageMeals: ManagerStorageMeals(storageMeals: [], isSave: false), isAcepeted: .constant(false) )
}



