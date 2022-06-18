//
//  Katelyn.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Katelyn: View {
    @State var catSize = 0.1
    @State var nameRotation = Angle(degrees: 30)
    @State var textRotation = Angle(degrees: 180)
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.teal,.purple], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                openURL(URL(string: "https://youtube.com/watch?v=dQw4w9WgXcQ")!)
            }, label: {
                Text(" idk anymore  ")
                    .font(.title)
                    .foregroundColor(.clear)
                
                    .frame(width: 10000, height: 1000)
                    .cornerRadius(20)
                    .padding()
            })
            VStack {
                Text("**hello im katelyn**")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .rotation3DEffect(
                        nameRotation,
                        axis: (x: 2, y: 1, z: 0)
                    )
                
                
                Image("AAAAA-SO-CUTEEE")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .cornerRadius(20)
                    .padding()
                    .scaleEffect(catSize)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 3)) {
                            catSize = 1
                        }
                    }
                
                Text("*i luv cute cats*")
                    .foregroundColor(.white)
                    .font(.title)
                
                    .rotationEffect(textRotation)
                
                
                
                
                Text("cats > paw patrol")
                    .foregroundColor(.white)
                    .font(.caption)
                
                
                
                
                
            }
        }
    }
}

struct Katelyn_Previews: PreviewProvider {
    static var previews: some View {
        Katelyn()
    }
}
