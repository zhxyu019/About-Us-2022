//
//  Rachel.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Rachel: View {
    
    @State var nameRotation: Angle = .zero
    @State var showName = false
    @State var showText = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan, .pink, .yellow, .teal],
                           startPoint: .top,
                           endPoint: .bottom)
            
            VStack {
                
                Button {
                    withAnimation() {
                        showName = true
                    }
                    } label : {
                  Text("Rachel")
                    .padding()
                    .font(.system(size: 50, weight: .heavy))
                    .onAppear {
                        withAnimation() {
                            nameRotation = .degrees(1440)
                        }
                    }
                
                Image("RL Icon 1")
                    .resizable()
                    .scaledToFit()
                
                Button {
                    withAnimation() {
                        showText = true
                    }
                    } label : {
                        Text("Click to see text")
                            .padding(10)
                            .font(.system(size: 25, weight: .heavy))
                    }
                    .foregroundColor(.black)
                
                if showText {
                    Text("[Paw Patrol is cool 🐾](https://www.youtube.com/watch?v=1UdI_eoDPKQ)")
                        .padding(10)

                }
                    
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
