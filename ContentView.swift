import SwiftUI

struct ContentView: View {
    @State private var columnVisibility =
    NavigationSplitViewVisibility.doubleColumn
    @EnvironmentObject var customFont: customFonts
    
    var body: some View {
        VStack {
            if(isiPad()) {
                
                NavigationSplitView(columnVisibility: $columnVisibility) {
                    VStack(alignment: .center) {
                        ScrollView {
                            SideBarView()
                            Spacer()
                            VStack(alignment: .center, spacing: 10) {
                                ForEach(methodsCategories, id: \.self) { methods in
                                    
                                    NavigationLink {
                                        Content(contentOfMethods: methods)
                                    } label: {
                                        VStack {
                                            MethodButton(paramsMethods: methods)
                                                .padding(.horizontal)
                                        }
                                    }
                                }
                            }
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(15)
                            .padding(.top, 35)
                            
                            Spacer()
                        }
                        .navigationBarTitleDisplayMode(.large)
                        .navigationTitle("Restaurant")
                        
                        
                    }
                    .padding(.horizontal)
                }
                detail: {
                
                // aqui é o conteudo do programa
            }
                
            }
            else {
                NavigationStack {
                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Hello, world22!")
                    }
                }
            }
        }
    }
}





func isiPad() -> Bool {
    let device = UIDevice.current
    
    let iPad = device.model == "iPad"
    
    
    return iPad
}


