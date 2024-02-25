//
//  SwiftUIView.swift
//
//
//  Created by Renan Tavares on 24/02/24.
//

import SwiftUI

struct MessageStatus: View {
    @Binding var show: Bool
    @State var animateCircle = false
    var icon: String
    var text: String
    var gradientColor: Color
    var circleColor: Color
    var details: String
    var details2: String
    var corner: CGFloat = 30
    
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: corner)
                    .frame(width: 510,height: 300)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.clear, .clear, gradientColor]), startPoint: .top, endPoint: .bottom))
                    .opacity(0.4)
                    .offset(y: show ? -330 : 370)
                ZStack {
                    RoundedRectangle(cornerRadius: corner).foregroundStyle(.white)
                        .frame(width: 500, height: 280)
                        .shadow(color: .black.opacity(0.01), radius: 20, x: 0.0, y: 0.0)
                        .shadow(color: .black.opacity(0.1), radius: 30, x: 0.0, y: 0.0)
                    VStack(spacing: 20) {
                        ZStack {
                            Circle().stroke(lineWidth: 2).foregroundStyle(circleColor)
                                .frame(width: 70, height: 70)
                                .scaleEffect(animateCircle ? 1.3: 0.90)
                                .opacity(animateCircle ? 0 : 1)
                                .animation(.easeInOut(duration: 2).delay(1).repeatForever(autoreverses: false), value: animateCircle)
                            Circle().stroke(lineWidth: 2).foregroundStyle(circleColor)
                                .frame(width: 70, height: 70)
                                .scaleEffect(animateCircle ? 1.3: 0.90)
                                .opacity(animateCircle ? 0 : 1)
                                .animation(.easeInOut(duration: 2).delay(1.5).repeatForever(autoreverses: false), value: animateCircle)
                                .onAppear {
                                    animateCircle.toggle()
                                }
                            Image(icon)
                        }
                        Text(text).bold().font(.system(size: 25))
                        Text(details).opacity(0.5)
                        Text(details2).opacity(0.5)
                        
                    }.foregroundColor(.black)
                    
                }.padding(.horizontal, 40)
                    .offset(y: show ? -330 : 370)
                
            }
            .onChange(of: show) { tag in
                if tag {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            show = false
                        }
                    }
                    
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    MessageStatus(show: .constant(true), icon: "Er3", text: "Error", gradientColor: .red, circleColor: .red, details: "Error 404", details2: "id not found")
}
