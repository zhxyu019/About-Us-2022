//
//  Faith.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Faith: View {
    
    @State var isHidden = false
    @State var rotation: Angle = .degrees(60)
    @State var opacity: Double = 0
    @State private var nameRotation = Angle(degrees: 30)
    
    var body: some View {
        ZStack {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Text("__hi am faith__")
                        .position(x: 200, y: 50)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]),
                                                    startPoint: .bottomLeading,
                                                    endPoint: .topTrailing)
                             .shadow(color: .purple, radius: 3, x: 0.5, y: 1))
                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                        .frame(width: 450, height: 200)
                        .rotation3DEffect(
                            nameRotation,
                            axis: (x: 2, y: 1, z: 0)
                        )
                    Text("i like draw and sleep and game (minecrft) am fandom gorl and brainrots a lot")
                        .font(.system(size: 20, design: .monospaced))


                }
                
                Button {
                    isHidden = true
                } label: {
                    Text("look at my art")
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(10)
                }
                
                if isHidden == true {
                    VStack {
                        Image("DOUBLE LIFE_pic")
                             .resizable()
                             .scaledToFit()
                             .onAppear {
                                 withAnimation(.easeInOut(duration: 2)) {
                                     rotation = Angle(degrees: 360 * 2)
                                     opacity = 1
                                 }
                             }
                             .onDisappear {
                                 rotation = .zero
                                 opacity = 0
                             }
                             .rotationEffect(rotation)
                             .opacity(opacity)
                        Image("Welcome to the Show!_final")
                             .resizable()
                             .scaledToFit()
                             .onAppear {
                                 withAnimation(.easeInOut(duration: 2)) {
                                     rotation = Angle(degrees: 360 * 2)
                                     opacity = 1
                                 }
                             }
                             .onDisappear {
                                 rotation = .zero
                                 opacity = 0
                             }
                             .rotationEffect(rotation)
                             .opacity(opacity)
                    }
                   
                    
                }
 
            }
        }
    }
}

struct Faith_Previews: PreviewProvider {
    static var previews: some View {
        Faith()
    }
}
