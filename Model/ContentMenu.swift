//
//  File.swift
//
//
//  Created by Renan Tavares on 15/02/24.
//

import Foundation
import SwiftUI



class ContentCategoryMenu: Identifiable, ObservableObject{
    var id = UUID()
    var name: String
    var dot: String
    var price: String
    var description: String
    @Published var isChecked: Bool
    
    init(id: UUID = UUID(), name: String, dot: String, price: String, description: String, isChecked: Bool) {
        self.id = id
        self.name = name
        self.dot = dot
        self.price = price
        self.description = description
        self.isChecked = isChecked
    }
}



 


     var starter: [ContentCategoryMenu] = [ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]
    
   var mainCourse: [ContentCategoryMenu] = [ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]


    var dessert: [ContentCategoryMenu] = [ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]

    var drinks: [ContentCategoryMenu] = [ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]





