//
//  Nicole.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Nicole: View {
    
    @State var helloRotation = Angle(degrees: 40)
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        VStack {
            Text("nicole")
                .font(.system(size: 40, weight: .bold, design: .serif))
            Image("paw patrol")
                .resizable()
                .frame(width: 300, height: 300)
                .aspectRatio(contentMode: .fill)
                .mask(Circle())
                .padding()
            HStack{
                Text("paw")
                    .rotation3DEffect(helloRotation, axis: (1, 2, 1))
                    .font(.system(size: 30, weight: .regular, design: .rounded))
                    .padding()
                Text("patrol")
                    .rotation3DEffect(helloRotation, axis: (1, -2, -1))
                    .font(.system(size: 30, weight: .regular, design: .rounded))
                    .padding()
            }
            Text("is the best")
                .rotation3DEffect(helloRotation, axis: (1, 0, 0))
                .font(.system(size: 30, weight: .regular, design: .monospaced))
                .padding()
            Button{
                openURL(URL(string: "https://youtu.be/a3LLv53LEuY")!)
            }label: {
                HStack{
                    Image(systemName: "video.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    Text("what i play on loop!")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold, design: .serif))
                }
                .padding()
            }
            .background(Color.teal)
            .cornerRadius(15)
            .padding()
            
            Button{
                openURL(URL(string: "http://www.gamekidgame.com/paw/paw_games.html")!)
            }label: {
                HStack{
                    Image(systemName: "gamecontroller.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    Text("my favourite games!")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold, design: .serif))
                }
                .padding()
            }
            .background(Color.red)
            .cornerRadius(15)
            .padding()
        }
    }
}

struct Nicole_Previews: PreviewProvider {
    static var previews: some View {
        Nicole()
    }
}
