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
    
    var typeMethod: String?
    
    var body: some View {
        VStack {
            ZStack {
                Image("Orders")
                
                if (storageMeals.isSave && typeMethod == "DELETE") || typeMethod == "POST" {
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
                    }.frame(width: 550, height: 570, alignment: Alignment(horizontal: .leading, vertical: .top))
                        .padding(.top, 100)
                }
            }
            
            if typeMethod == "POST" {
                VStack(alignment: .center) {
                  
                    Text("Enviar pedido")
                        .foregroundStyle(.black)
                        .font(.customFont(size: 24))
                    
                }.frame(width: 367, height: 66)
                    .background(Color(red: 241/255, green: 241/255, blue: 232/255))
                    .cornerRadius(15)
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        isShowing.toggle()
                        storageMeals.isSave.toggle()
                        print(storageMeals.storageMeals.count)
                    }
            }
            
            
        }
        
    }
}

#Preview {
    Orders(isShowing: .constant(false), storageMeals: ManagerStorageMeals(storageMeals: [], isSave: false) )
}



