//
//  SwiftUIView.swift
//  
//
//  Created by Renan Tavares on 25/02/24.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 15) {
                    Text("In this project, we will delve into the fascinating world of REST APIs and JSON as a data format for obtaining and manipulating data.").font(.title2)
                    Text("But what is a REST API?").font(.title).bold()
                    Text("A REST API is a programming interface that allows communication between different systems using the HTTP protocol. In other words, APIs are the interface between client and server.").font(.title2)
                    Text("What is JSON?").font(.title).bold()
                    Text("JSON is a way of organizing this information so that computers can easily understand it. It's like a simple language that computers use to communicate with each other.").font(.title2)
                    Text("Example of a restaurant.").font(.title).bold()
                    Text("But what does this mean in practice? And how does it relate to a restaurant? Let's imagine that our system is a restaurant, and that we, as people, are the customers. The API would be the waiter because it is the interface between you and all the services that a restaurant offers, and the kitchen is the server because that's where all the magic happens. You don't need to worry about stoves, ovens, dishes, managing inventory, or serving drinks. The menu is the data listing all the options available for you to choose from when you ask the waiter. Each menu item has a name, a price, and a description.").font(.title2)
                    Text("HTTP Verbs and Their Functions").font(.title).bold()
                    Text("HTTP verbs, such as GET, POST and DELETE, are like actions you can take in this restaurant.").font(.title2)
        
                    Text("Let's explore each verb? Follow in order as it is on the sidebar.").font(.title2)
                    
                }
                
            }.navigationTitle("Introduction").padding(.vertical, 40)
        
        }.frame(maxWidth: .infinity)
    }
}

#Preview {
    Introduction()
}
