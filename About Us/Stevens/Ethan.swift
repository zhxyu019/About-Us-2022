//
//  Ethan.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Ethan: View {
    var body: some View {
        ZStack{
            Image("Background")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
            Text("                       ")
                    .frame(width: 350, height: 200, alignment: .leading)

                    .background(.black)
                    .opacity(0.5)
                    .cornerRadius(10)
                    .position(x: 195, y: 400)
                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.334), radius: 2, x: 0, y: 2)

            HStack(alignment: .center){
                    Image("ProfPic")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .cornerRadius(25)
                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.204), radius: 2, x: 0, y: 2)
                    .padding(.top, 50.0)
                    .position(x: 100, y: 150)
                
                    VStack{
                        Text("Lim Yu Fong")
                            .font(.title)
                            .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.0))
                            .bold()
                            .position(x: 75, y: 155)
                        Text("Also known as Ethan")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(Color(hue: 0.574, saturation: 0.0, brightness: 0.1))
                            .position(x: 75, y: -200)
                }
            }
                VStack(alignment: .leading){
                    Text("Bio:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.top, 60)
                    Text("Student at Kranji Secondary School")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    Text("Science & Technology Club")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 5)
                    Text("Technology nerd")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    Text("Car enthusiast")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                }
                .frame(alignment: .leading)
                .padding(.top, 100.0)
                .position(x: 170, y: 300)
            
            Text("Contact Information:")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .position(x: 130, y: 538)
            HStack(alignment: .center){
                Link(destination:URL(string: "mailto:ethanolicacid@outlook.com")!){
                    Image(systemName: "envelope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.334), radius: 2, x: 0, y: 2)
                        .padding(.all, 8)
                        .foregroundColor(.white)
                        .background(Color(hue: 0.591, saturation: 1.0, brightness: 1.0))
                        .cornerRadius(10)
                        .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.334), radius: 2, x: 0, y: 2)
                    Text("Pigeon mail")
                        .fontWeight(.medium)
                        .lineLimit(1)
                        .frame(width:220)
            }
                .position(x: 165, y: 585)
                
            HStack(alignment: .center){
                Link(destination:URL(string: "tel:+6588758810")!){
                    Image(systemName: "phone")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.334), radius: 2, x: 0, y: 2)
                        .padding(.all, 8)
                        .foregroundColor(.white)
                        .background(Color(hue: 0.37, saturation: 1.0, brightness: 0.837))
                        .cornerRadius(10)
                        .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.334), radius: 2, x: 0, y: 2)
                    Text("Spam call")
                        .fontWeight(.medium)
            }
            .position(x: -85, y: 650)
            }
        }
    }
}
}

struct Ethan_Previews: PreviewProvider {
    static var previews: some View {
        Ethan()
    }
}
