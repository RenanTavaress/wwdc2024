//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 23/02/24.
//

import SwiftUI

struct EndPoint: View {
    @Binding var orderId: String
    var typeMethod: String
    var endPoint: String
    var color: Color
    var needId: Bool
    
    var body: some View {
        HStack {
            Section {
                Text(typeMethod)
                    .foregroundStyle(.white)
                    .bold()
            }.frame(width: 100, height: 60)
                .background(color)
            
            HStack {
                Text(endPoint)
                    .frame(alignment: .leading)
                   

                
                if needId {
                    TextField("{id}", text: $orderId)
                        .frame(alignment: .leading)
                        .padding(.leading, -8)
                }
                
            }.frame(width: 350, height: 60, alignment: .leading)
            .padding(.leading, 20)
            .font(.system(size: 20))
            
            
        }.background(Color(.systemGray6))
            .cornerRadius(15)
            
        
    }
}

#Preview {
    EndPoint(orderId: .constant("12"), typeMethod: "DELETE", endPoint: "/pedido/0001/item/", color: .red, needId: true)
}
