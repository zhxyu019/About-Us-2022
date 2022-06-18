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
            Text("hello i'm")
                .font(.system(size: 40, weight: .bold, design: .serif))
                .offset(y: -200)
            Text("nicole")
                .rotation3DEffect(helloRotation, axis: (1, 0, 0))
                .font(.system(size: 30, weight: .regular, design: .rounded))
            Button{
                openURL(URL(string: "https://youtu.be/a3LLv53LEuY")!)
            }label: {
                HStack{
                    Image(systemName: "video.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    Text("Watch this video")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold, design: .serif))
                }
                .padding()
            }
            .background(Color.teal)
            .cornerRadius(15)
                
        }
    }
}

struct Nicole_Previews: PreviewProvider {
    static var previews: some View {
        Nicole()
    }
}
