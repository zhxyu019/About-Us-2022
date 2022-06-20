//
//  Rachel.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Rachel: View {
    
    @State var petImageScale: CGFloat = 1
    @State var showText = false
    @State var nameRotation: Angle = .zero

    
    var body: some View {
        ZStack {
            Color
                .cyan
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    withAnimation() {
                        showText = true
                    }
                } label: {
                    Text("Rachel")
                        .padding()
                        .font(.system(size: 50, weight: .heavy))
                        .foregroundColor(.white)
                }
                
                if showText {
                    Text("[Paw Patrol is cool 🐾](https://www.youtube.com/watch?v=1UdI_eoDPKQ)")
                        .padding(10)
                        .onAppear() {
                            nameRotation = .degrees(1440)
                        }
                    
                    Text("Dark mode is COOLER!!!")

                }
                
                HStack(alignment: .top, spacing: 0) {
                    Image("PET")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .scaleEffect(petImageScale)
                        .frame(width: 140, height: 140)
                        .padding()

                    
                    ZStack {
                        Color.black
                        VStack(alignment: .leading) {
                            Text("Rey 🐣 is smarter than Cloud 🐥")
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(.white)
                            
                            Text("P.S. Rey is mine, Cloud is my sis'")
                                .font(.system(size: 10))
                                .foregroundColor(.white)
                                .padding(.bottom)
                            
                            Text("🥋 + 🎧🎶 + 🎨")
                                .font(.system(size: 20, weight: .regular))
                                .foregroundColor(.white)
                        }
                        .padding()
                    }

                    .frame(width: 200, height: 150)

                }
                .padding(.top, 35)
                
            }
        }
    }
}

struct Rachel_Previews: PreviewProvider {
    static var previews: some View {
        Rachel()
    }
}
