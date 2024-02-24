//
//  File.swift
//
//
//  Created by Renan Tavares on 15/02/24.
//

import Foundation
import SwiftUI



class ContentCategoryMenu: Identifiable, ObservableObject{
    var id = String()
    var name: String
    var dot: String
    var price: String
    var description: String
    @Published var isChecked: Bool
    
    init(id: String, name: String, dot: String, price: String, description: String, isChecked: Bool) {
        self.id = id
        self.name = name
        self.dot = dot
        self.price = price
        self.description = description
        self.isChecked = isChecked
    }
}


class ManagerStorageMeals: ObservableObject {
    @Published var storageMeals: [ContentCategoryMenu]
    @Published var isSave: Bool
    
    init(storageMeals: [ContentCategoryMenu], isSave: Bool) {
        self.storageMeals = storageMeals
        self.isSave = isSave
    }
}
 


var starter: [ContentCategoryMenu] = [ContentCategoryMenu(id: "1",name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "2",name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "3",name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "4",name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "5",name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "6",name: "Potato", dot:"......................................................", price: "$10.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]
    
var mainCourse: [ContentCategoryMenu] = [ContentCategoryMenu(id: "7",name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "8",name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "9",name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "10",name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "11",name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "12",name: "Potato", dot:"......................................................", price: "$12.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]


var dessert: [ContentCategoryMenu] = [ContentCategoryMenu(id: "18",name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "13",name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "14",name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "15",name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "16",name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "17",name: "Potato", dot:"......................................................", price: "$14.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]

var drinks: [ContentCategoryMenu] = [ContentCategoryMenu(id: "19",name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "20",name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "21",name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "22",name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "23",name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false),ContentCategoryMenu(id: "24",name: "Potato", dot:"......................................................", price: "$16.00", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet", isChecked: false)]





