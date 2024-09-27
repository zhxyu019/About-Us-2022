//
//  JingXian.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct JingXian: View {
    @State private var nameRotation = Angle(degrees: 30)
    @State private var videoButtonRotation = Angle(degrees: 360)
    @State private var offset: CGFloat = -50
    @State private var phase: CGFloat = 0
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack {
            Color
                .teal
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Welcome")
                    .font(.system(size: 80, weight: .black, design: .serif))
                    .italic()
                    .offset(x: 0, y: offset)
                    .foregroundColor(.red)
                
                
                Text("Jing Xian")
                    .padding()
                    .font(.system(size: 50, weight: .semibold, design: .rounded))
                    .rotation3DEffect(
                        nameRotation,
                        axis: (x: 6, y: 3, z: 7)
                    )
                    .offset(y: -90)

                
                Button(action: {
                    openURL(URL(string: "https://youtube.com/watch?v=dQw4w9WgXcQ")!)
                }, label: {
                    HStack {
                        Image(systemName: "video.fill")
                            .foregroundColor(.red)
                            .opacity(0.8)
                        Text("Very Not Sus video")
                            .font(.system(size: 20, weight: .regular, design: .monospaced))
                            .foregroundColor(.red)
                        
                    }
                    .padding()
                    .background(Color.green.shadow(color: .green, radius: 3, x: 0.5, y: 1))
                })
                .rotationEffect(videoButtonRotation)
                .padding(.top)

            }
        }
        .onAppear {
            withAnimation(Animation.spring(response: 0.1, dampingFraction: 5, blendDuration: 0.2).repeatForever()) {
                nameRotation = Angle(degrees: -30)
            }
            
            withAnimation(.interpolatingSpring(mass: 5, stiffness: 3.5, damping: 0.1, initialVelocity: 10).repeatForever()) {
                offset = 0
            }
            
            withAnimation(.easeInOut(duration: 0.5).repeatForever()) {
                videoButtonRotation = Angle(degrees: -360)
            }
            
            withAnimation(.linear(duration: 0.5).repeatForever(autoreverses: false)) {
                phase -= 30
            }
        }
    }
}

struct JingXian_Previews: PreviewProvider {
    static var previews: some View {
        JingXian()
    }
}
