//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 11/02/24.
//

import SwiftUI


struct Content: View {
    
    var contentOfMethods: Methods
    @State var selectedIndex: Int = 0
    var body: some View {
        VStack {
            if contentOfMethods.name == "GET" {                MethodGet(selectedIndex: $selectedIndex, typeMethod: contentOfMethods.name)
            } else if contentOfMethods.name == "POST" {
                MethodPost(selectedIndex: $selectedIndex, typeMethod: contentOfMethods.name)
            }
        }
    }
}

