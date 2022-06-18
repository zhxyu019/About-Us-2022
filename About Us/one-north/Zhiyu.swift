//
//  Zhiyu.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Zhiyu: View {
    
    @Environment(\.openURL) var openURL

    var body: some View {
        ZStack{
            Color
                .red
                .edgesIgnoringSafeArea(.all)
            
            Text("I am Zhiyu.")
                .font(.system(size: 60, weight: .bold, design: .serif))
                .italic()
                .offset(x: 0, y: -350)
                .foregroundColor(.brown)
            
            Text("I like to ruin people's eyes.")
                .padding()
                .font(.system(size:40, weight: .heavy))
                .foregroundColor(.blue)
                .offset(x:20, y: -370)
                .rotation3DEffect(Angle(degrees: 20), axis: (x: 2, y: 1, z: 0))
                
            Text("and in the process ruin my perfect vision too!")
                .padding()
                .font(.system(size:20, weight: .thin))
                .foregroundColor(.green)
                .offset(x:0,  y: -150)
                .rotation3DEffect(Angle(degrees: -30), axis: (x: 2, y: 1, z: 0))
            
            Text("I like red things, as you can see.")
                .padding()
                .offset(x:-50,  y: -100)

            HStack {
                Image("rickroll")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180 )
                    .offset(x:0, y: -10)
                
               Image("doggie")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180 )
                    .offset(x:0, y: 10)
            }
            
            Image("paw patrol")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 180 )
                .offset(x:0, y: 200)

            Button(action: {
                openURL(URL(string: "https://youtube.com/watch?v=dQw4w9WgXcQ")!)
            }, label: {
                HStack {
                    Text("click for wholesome content.")
                        .font(.system(size: 20, weight: .regular, design: .serif))
                        .foregroundColor(.white)
                    
                }
                .padding()
                .background(Color.green.shadow(color: .red, radius: 3, x: 0.5, y: 1))
            })
            .rotationEffect(Angle(degrees: 0))
            .offset(x:0, y: 350)
            
        
        }
    }
}

struct Zhiyu_Previews: PreviewProvider {
    static var previews: some View {
        Zhiyu()
    }
}

