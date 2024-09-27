//
//  Wonho.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Wonho: View {
    @State private var nameRotation = Angle(degrees: 30)
        @State private var rabbitTextRotation = Angle(degrees: 10)
        @State private var rabbitImageScale: CGFloat = 1
        
        @State private var videoButtonRotation = Angle(degrees: 15)
        @State private var gitHubButtonRotation = Angle(degrees: -10)
        @State private var instagramButtonRotation = Angle(degrees: 0)
        
        @State private var helloOffset: CGFloat = -50
        
        @State private var phase: CGFloat = 0
        
        @Environment(\.openURL) var openURL
        
        var body: some View {
            ZStack {
                Color
                    .blue
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("HELLO IM")
                        .font(.system(size: 30, weight: .semibold, design: .serif))
                        .italic()
                        .offset(x: 0, y: helloOffset)
                        .foregroundColor(.yellow)
                    
                    Text("wonho")
                        .padding()
                        .font(.system(size: 50, weight: .heavy, design: .serif))
                        .rotation3DEffect(
                            nameRotation,
                            axis: (x: 2, y: 1, z: 0)
                        )
                    
                    HStack(alignment: .top, spacing: 0) {
                        Image("rabbit")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .mask(Circle())
                            .scaleEffect(rabbitImageScale)
                            .frame(width: 70, height: 70)
                            .offset(x: 35, y: -35)
                            .zIndex(1.0)
                        
                        ZStack {
                            Color.orange
                            VStack(alignment: .leading) {
                                Text("jiachen's rabbit ig")
                                    .font(.system(size: 20, weight: .medium, design: .serif))
                            }
                            .padding(.leading)
                        }
                        .overlay(
                            Rectangle()
                                .stroke(style: StrokeStyle(lineWidth: 4,
                                                           lineCap: .round,
                                                           dash: [0, 15],
                                                           dashPhase: phase))
                        )
                        .frame(width: 200, height: 150)
                        .rotation3DEffect(
                            rabbitTextRotation,
                            axis: (x: 1, y: 0.5, z: 0)
                        )
                    }
                    .padding(.top, 35)
                    
                    Button(action: {
                        openURL(URL(string: "https://youtube.com/watch?v=dQw4w9WgXcQ")!)
                    }, label: {
                        HStack {
                            Image(systemName: "video.fill")
                                .foregroundColor(.white)
                                .opacity(0.8)
                            Text("not rickroll pls watch")
                                .font(.system(size: 20, weight: .regular, design: .serif))
                                .foregroundColor(.black)
                            
                        }
                        .padding()
                        .background(Color.green.shadow(color: .green, radius: 3, x: 0.5, y: 1))
                    })
                    .rotationEffect(videoButtonRotation)
                    .padding(.top)
                    
                    Button(action: {
                        openURL(URL(string: "https://github.com/attemptn63")!)
                    }, label: {
                        HStack {
                            Image(systemName: "curlybraces")
                                .foregroundColor(.white)
                                .opacity(0.8)
                            Text("github")
                                .font(.system(size: 20, weight: .regular, design: .serif))
                                .foregroundColor(.white)
                        }
                        .padding()
                        .background(Color.black.shadow(color: .black, radius: 3, x: 0.5, y: 1))
                    })
                    .rotationEffect(gitHubButtonRotation)
                    .offset(x: 55, y: 0)
                    
                }
            }
            .onAppear {
                withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                    nameRotation = Angle(degrees: -30)
                }
                
                withAnimation(.easeInOut.repeatForever()) {
                    rabbitTextRotation = Angle(degrees: 0)
                }
                
                withAnimation(.linear(duration: 0.5).repeatForever()) {
                    rabbitImageScale = 1.3
                    helloOffset = 0
                }
                
                withAnimation(.easeInOut(duration: 0.5).repeatForever()) {
                    videoButtonRotation = Angle(degrees: 0)
                    gitHubButtonRotation = Angle(degrees: 5)
                    instagramButtonRotation = Angle(degrees: -15)
                }
                
                withAnimation(.linear(duration: 0.5).repeatForever(autoreverses: false)) {
                    phase -= 30
                }
            }
        }
}

struct Wonho_Previews: PreviewProvider {
    static var previews: some View {
        Wonho()
    }
}
