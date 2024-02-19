//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 15/02/24.
//

import SwiftUI

struct Categories: View {
    
    var isSelected: Bool
    var setSelectedIndex: () -> Void
    var name: String
    
   
    var body: some View {
        VStack {
            Text(name)
                .padding(.horizontal, 23)
                .font(.customFont(size: 20))
                .frame(height: 20, alignment: .bottom)
            if isSelected {
                Divider()
                    .frame(width: 120)
                    .overlay(.black)
            }
        }
        .onTapGesture {
        
            self.setSelectedIndex()
            
        }
    }
}

//#Preview {
//    Categories(showRectangle: , name: "Starter")
//}
