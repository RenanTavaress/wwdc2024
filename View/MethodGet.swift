//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 11/02/24.
//

import SwiftUI

struct MethodGet: View {
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
                        
                        
                        
                        HStack(spacing: 40) {
                            Text("Starter")
                                .padding(.horizontal, 23)
                                .font(.system(size: 20))
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .padding(.top, 40)
                                )
                            Text("Maincourse")
                                .padding(.horizontal, 23)
                                .font(.system(size: 20))
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .padding(.top, 40)
                                )
                            Text("Dessertaaaa")
                                .padding(.horizontal, 23)
                                .font(.system(size: 20))
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .padding(.top, 40)
                                )
                            Text("Drinks")
                                .padding(.horizontal, 23)
                                .font(.system(size: 20))
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .padding(.top, 40)
                                )
                        }.frame(width: .infinity, alignment: .trailing)
                        
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Potato")
                                        .font(.system(size: 24))
                                    Text("......................................................")
                                        .font(.system(size: 24))
                                    Text("$10.00")
                                        .font(.system(size: 24))
                                }
                                Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet")
                            }
                        }.frame(height: 100)
                        
                    }
                }
                
            }
        }.navigationTitle("Web Restô")
    }
}

#Preview {
    MethodGet()
}
