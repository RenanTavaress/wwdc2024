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
    @State var storageMeals: ManagerStorageMeals = ManagerStorageMeals(storageMeals: [], isSave: false)
    
    var body: some View {
        VStack {
            if contentOfMethods.name == "GET" {
                MethodGet(selectedIndex: $selectedIndex, typeMethod: contentOfMethods.name, storageMeals: $storageMeals)
            } else if contentOfMethods.name == "POST" {
                MethodPost(selectedIndex: $selectedIndex, typeMethod: contentOfMethods.name,  contentOfMethods: contentOfMethods, storageMeals: $storageMeals)
            } else if contentOfMethods.name == "DELETE" {
                MethodDelete( storageMeals: $storageMeals, typeMethod: contentOfMethods.name)
            } else {
                MethodPut(storageMeals: $storageMeals, selectedIndex: $selectedIndex, typeMethod: contentOfMethods.name)
            }
        }
    }
    
}

