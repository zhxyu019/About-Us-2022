//
//  Niutian.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Niutian: View {
    @State var nameRotation: Angle = .zero
    @State var shrekRotation: Angle = .zero
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.mint, .teal, .blue ]), startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(.all)
            VStack{
            Text("YO, HERE!")
                    .font(.system(size: 30, weight: .semibold, design: .serif))
                    .offset(y: -10)
                
            Image("niutianShrek")
                    .scaledToFit()
                    .cornerRadius(.infinity)
                    .padding()
                    .rotationEffect(shrekRotation)
                                
            Text("MY NAME IS NIUTIAN")
                    .bold()
                    .font(.system(size:30))
                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .transition(.move(edge: .bottom))
                    .rotation3DEffect(
                        nameRotation,
                        axis: (x: 2, y: 1, z: 0))
                    .padding()
                
                Text("[Tap here to get rickrolled](https://youtu.be/dQw4w9WgXcQ)")
                    .foregroundColor(.black)
                    .font(.system(size:20))
                
                Text("[Tap here to get to see YJ's Cats](https://www.instagram.com/pommycat/)")
                    .padding(.bottom)
                    .foregroundColor(.black)
                    .font(.system(size:20))
                
                
            }
    }
        .onAppear{
            withAnimation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 2)){
                nameRotation = .degrees (720)
                shrekRotation = .degrees (1800)
            }
        }
    }
}

struct Niutian_Previews: PreviewProvider {
    static var previews: some View {
        Niutian()
    }
}
