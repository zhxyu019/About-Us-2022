//
//  Elyssa.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Elyssa: View {
    
    @State private var videoButtonRotation = Angle(degrees: 15)
    @Environment(\.openURL) var openURL
    @State private var phase: CGFloat = 0
    
    
    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.8)
                .ignoresSafeArea(.all)
            VStack {
                Image("chase pic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text("inspiration: jia chen's code")
                    .font(.system(size: 4, design: .monospaced))
                Text("Hi, I'm Elyssa!")
                    .bold()
                    .font(.system(size: 100, design: .monospaced))
                    .padding()
                Button(action: {
                    openURL(URL(string: "https://www.youtube.com/watch?v=1UdI_eoDPKQ")!)
                }, label: {
                    HStack {
                        Image(systemName: "video.fill")
                            .foregroundColor(.white)
                            .opacity(0.8)
                        Text("intro video")
                            .font(.system(size: 20, weight: .regular, design: .rounded))
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.teal.shadow(color: .teal, radius: 3, x: 0.5, y: 1))
                })
                .rotationEffect(videoButtonRotation)
                .padding(50)
            
                Button(action: {
                    openURL(URL(string: "https://www.instagram.com/e.l.y.s.sa/")!)
                }, label: {
                    HStack {
                        Image(systemName: "camera.fill")
                            .foregroundColor(.white)
                            .opacity(0.8)
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]),
                                                startPoint: .bottomLeading,
                                                endPoint: .topTrailing)
                         .shadow(color: .purple, radius: 6, x: 0.5, y: 1))
                    .cornerRadius(5)
                })
            }
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5).repeatForever()) {
                videoButtonRotation = Angle(degrees: 0)
            }
            
            withAnimation(.linear(duration: 0.5).repeatForever(autoreverses: false)) {
                phase -= 30
            }
        }
    }
}

struct Elyssa_Previews: PreviewProvider {
    static var previews: some View {
        Elyssa()
    }
}
