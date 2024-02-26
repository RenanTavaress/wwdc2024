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
                        SideBarView()
                        
                        Spacer()
                        
                        NavigationLink {
                            Introduction().padding(.horizontal,40)
                            
                        } label: {
                            VStack {
                                MethodButton(paramsMethods: Methods(name: "Introduction", color: Color(.presetAccent)))
                                    .background(Color(.systemGray6))
                                    .cornerRadius(15)
                                    .padding(.top, 35)
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        ScrollView(showsIndicators: false) {
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
                            .background(Color(.systemGray6))
                            .cornerRadius(15)
                            .padding(.top)
                            
                            Spacer()
                        }
                        .navigationBarTitleDisplayMode(.large)
                        .navigationTitle("RestôApi")
                        
                        
                    }
                    .padding(.horizontal)
                }
            detail: {
                
                Introduction().padding(.horizontal,40)
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


