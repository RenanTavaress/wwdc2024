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
    
    var body: some View {
        VStack {
            ZStack {
                Image("Orders")
                
                VStack(alignment: .leading) {
                    Text("    {")
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
                    Text("    }").font(.system(size: 18))
                }.frame(width: 550, height: 570, alignment: Alignment(horizontal: .leading, vertical: .top))
                .padding(.top, 100)
            }
            VStack(alignment: .center) {
                Text("Enviar pedido")
                    .foregroundStyle(.black)
                    .font(.customFont(size: 24))
                    .onTapGesture {
                       
                            isShowing.toggle()
                        
                        print(storageMeals.storageMeals.count)
                    }
            }.frame(width: 367, height: 66)
                .background(Color(red: 241/255, green: 241/255, blue: 232/255))
                .cornerRadius(15)
                .multilineTextAlignment(.center)
        }
        
    }
}

#Preview {
    Orders(isShowing: .constant(false), storageMeals: ManagerStorageMeals(storageMeals: []) )
}



