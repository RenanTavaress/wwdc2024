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
    var price: String
    var description: String
    @Published var isChecked: Bool
    
    init(id: String, name: String, price: String, description: String, isChecked: Bool) {
        self.id = id
        self.name = name
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
 


var starter: [ContentCategoryMenu] = [
    ContentCategoryMenu(id: "1", name: "Shrimp Cocktail", price: "$10.00", description: "Chilled shrimp served with a tangy cocktail sauce made from ketchup, horseradish, and lemon juice, garnished with fresh lemon wedges.", isChecked: false),
    ContentCategoryMenu(id: "2", name: "Buffalo Wings",  price: "$10.00", description: "Crispy chicken wings coated in a tangy and spicy buffalo sauce, served with creamy ranch or blue cheese dressing.", isChecked: false),
    ContentCategoryMenu(id: "3", name: "Loaded Potato Skins", price: "$10.00", description: "Halved potato skins filled with melted cheese, crispy bacon bits, and green onions, served with sour cream on the side.", isChecked: false),
    ContentCategoryMenu(id: "4", name: "Spinach Artichoke", price: "$10.00", description: "Creamy dip made with spinach, artichokes, and cheese, served warm with tortilla chips or bread for dipping.", isChecked: false),
    ContentCategoryMenu(id: "5", name: "Fried Green Tomatoes",  price: "$10.00", description: "Sliced green tomatoes coated in seasoned cornmeal, fried until golden and crispy, served with a zesty remoulade sauce.", isChecked: false)
]
    
var mainCourse: [ContentCategoryMenu] = [
    ContentCategoryMenu(id: "6", name: "BBQ Ribs",  price: "$12.00", description: "Slow-cooked pork ribs slathered in smoky barbecue sauce, served with coleslaw and cornbread on the side.", isChecked: false),
    ContentCategoryMenu(id: "7", name: "Southern Fried Chicken",  price: "$12.00", description: "Crispy fried chicken with a seasoned coating, served with mashed potatoes, gravy, and buttery corn on the cob.", isChecked: false),
    ContentCategoryMenu(id: "8", name: "New England Clam Chowder",  price: "$12.00", description: "Creamy soup loaded with tender clams, potatoes, onions, and smoky bacon, served with oyster crackers.", isChecked: false),
    ContentCategoryMenu(id: "9", name: "Classic Cheeseburger",  price: "$12.00", description: "Juicy beef patty topped with melted cheese, lettuce, tomato, onion, pickles, and special sauce, served on a toasted bun with fries.", isChecked: false),
    ContentCategoryMenu(id: "10", name: "Cajun Shrimp Pasta",  price: "$12.00", description: "Sautéed shrimp tossed in a creamy Cajun-spiced sauce with linguine pasta, bell peppers, and onions, garnished with fresh parsley.", isChecked: false)
]


var dessert: [ContentCategoryMenu] = [
    ContentCategoryMenu(id: "11", name: "Apple Pie",  price: "$14.00", description: "Flaky pastry crust filled with sweetened cinnamon-spiced apples, served warm with a scoop of vanilla ice cream.", isChecked: false),
    ContentCategoryMenu(id: "12", name: "Key Lime Pie", price: "$14.00", description: "Tangy and creamy pie made with Key lime juice and sweetened condensed milk, topped with whipped cream and lime zest.", isChecked: false),
    ContentCategoryMenu(id: "13", name: "Chocolate Chip Cookies", price: "$14.00", description: "Soft and chewy cookies loaded with chunks of chocolate, served fresh out of the oven with a glass of cold milk.", isChecked: false),
    ContentCategoryMenu(id: "14", name: "Banana Pudding", price: "$14.00", description: "Layers of creamy vanilla pudding, sliced bananas, and vanilla wafers, topped with whipped cream or meringue.", isChecked: false),
    ContentCategoryMenu(id: "15", name: "Pecan Pie", price: "$14.00", description: "Rich and gooey pie filled with a sweet and nutty mixture of pecans, brown sugar, and corn syrup, served with a dollop of whipped cream.", isChecked: false)
]

var drinks: [ContentCategoryMenu] = [
    ContentCategoryMenu(id: "16", name: "Mint Julep Mocktail",  price: "$16.00", description: "A refreshing blend of mint leaves, simple syrup, and soda water, served over crushed ice, garnished with a sprig of mint.", isChecked: false),
    ContentCategoryMenu(id: "17", name: "Virgin Piña Colada", price: "$16.00", description: "A tropical blend of pineapple juice, coconut cream, and ice, blended until smooth and topped with a cherry and pineapple wedge.", isChecked: false),
    ContentCategoryMenu(id: "18", name: "Iced Lemonade", price: "$16.00", description: "Freshly squeezed lemon juice sweetened with simple syrup and served over ice, garnished with a lemon slice.", isChecked: false),
    ContentCategoryMenu(id: "19", name: "Arnold Palmer", price: "$16.00", description: "Half lemonade, half iced tea, served over ice with a lemon wedge for a perfect balance of sweet and tart flavors.", isChecked: false),
    ContentCategoryMenu(id: "20", name: "Strawberry Milkshake", price: "$16.00", description: "Creamy vanilla ice cream blended with fresh strawberries and milk until thick and smooth, topped with whipped cream and a strawberry.", isChecked: false)
]





