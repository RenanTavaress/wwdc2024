//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 22/02/24.
//

import SwiftUI

struct MethodDelete: View {
    @State var isShowing: Bool = false
    @Binding var storageMeals: ManagerStorageMeals 
    
    var body: some View {
        VStack {
            ScrollView {
                Orders(isShowing: $isShowing, storageMeals: storageMeals)
            }.navigationTitle("Restaurant")
        }
    }
}

//#Preview {
//    MethodDelete(storages: , isShowing: .constant(false))
//}
