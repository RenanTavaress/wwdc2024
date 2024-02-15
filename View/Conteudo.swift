//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 11/02/24.
//

import SwiftUI


struct Content: View {
    
    let contentOfMethods: Methods
    
    var body: some View {
        VStack {
            if contentOfMethods.name == "GET" {
                MethodGet()
            }
        }
    }
}

