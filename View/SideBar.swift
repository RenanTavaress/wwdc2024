//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 11/02/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        
        if isiPad() {
            VStack {
//                Text("Web restô")
//                    .font(.largeTitle)
//                    .foregroundStyle(Color(.systemGray))
                
                VStack {
                    Text("HTTP Verbs")
                        .font(.title3)
                        .foregroundStyle(Color(.label))
                        .padding()
                }
                .frame(alignment: .top)
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .padding(.top, 25)
            }
        }
    }
}

#Preview {
    SideBarView()
}

