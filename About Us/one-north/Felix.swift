//
//  Felix.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Felix: View {
    @State private var nameRotation = Angle(degrees: 30)
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .yellow],
                           startPoint: .topTrailing,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text ("Hello! I'm:")
                    .bold()
                    .italic()
                    .font(.system(size: 50))
                Text ("Felix FD")
                    .bold()
                    .italic()
                    .font(.system(size: 50))
                    .foregroundColor(.black)
                    .padding()
                    .rotation3DEffect(
                        nameRotation,
                        axis: (x: 2, y: 1, z: 0))
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .cornerRadius(30)
                    .padding()
                Text ("I likes gaming and watching paw patrol!!!")
                    .italic()
                    .font(.system(size: 20))
                Text("But xcode version bad so i sad :(")
                    .italic()
                    .font(.system(size: 20))
                HStack{
                    VStack{
                        Link(destination: URL(string: "https://www.linkedin.com/in/felix-forbes-dimjati-452033232/")!){
                            Image(systemName: "briefcase")
                                .foregroundColor(.red)
                        }
                        .foregroundColor(.red)
                        .font(.system(size: 30))
                        .padding(.top)
                        .padding()
                        Text("My LinkedIn")
                    }
                    VStack{
                        Link(destination: URL(string: "https://www.youtube.com/watch?v=1UdI_eoDPKQ")!){
                            Image(systemName: "mail")
                                .foregroundColor(.red)
                        }
                        .foregroundColor(.red)
                        .font(.system(size: 30))
                        .padding(.top)
                        .padding()
                        Text("My Email")
                    }
                }
            }
        }
    }
}


struct Felix_Previews: PreviewProvider {
    static var previews: some View {
        Felix()
    }
}
