//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 23/02/24.
//

import SwiftUI

struct ButtonEndPoint: View {
    var typeMethod: String
    var color: Color
    var icon: String
    
    var body: some View {
        HStack {
            Text(typeMethod)
                .foregroundStyle(color)
                .font(.system(size: 20))
                .bold()
            Image(systemName: icon)
                .foregroundStyle(color)
                .font(.system(size: 20))
                
                
        }.frame(width: 130, height: 60)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(15)
    }
}

#Preview {
    ButtonEndPoint(typeMethod: "Post", color: .green, icon: "arrowshape.turn.up.right.fill")
}
