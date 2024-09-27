//
//  Natalie.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Natalie: View {
    var body: some View {
        ZStack {
            VStack {
                Image("SAP-L11-leafBackground")
                    .resizable()
                    .frame(width: 450, height: 210)
                    .offset(x: 0, y: 40)
                HStack {
                    Image("sadblizzard")
                        .resizable()
                        .scaledToFit()
                        .mask(Circle())
                        .overlay(
                            Circle()
                                .stroke(lineWidth: 8)
                                .foregroundColor(.white)
                        )
                        .offset(x: 14, y: -30)
                        .frame(width: 200, height: 200)
                        .shadow(radius: 6)
                    Text("Natalie")
                        .padding()
                        .font(.system(size: 60))
                        .offset(x: 4, y: -10)
                        .foregroundColor(.white)
                }
                VStack(alignment: .leading) {
                    Text("Name: Natalie")
                    Text("Group: Eunos")
                    Text("School: SST")
                    Text("Likes: Baked goods")
                    Text("Dislikes: Mosquito")
                    Text("Hobbies: Archery, Literature")
                }
                .font(.system(size: 40))
                .padding()
                .frame(width: 500, height: 500)
                .foregroundColor(.white)
                .background(.orange)
            }
        }
        .background(.green)
    }
}

struct Natalie_Previews: PreviewProvider {
    static var previews: some View {
        Natalie()
    }
}
