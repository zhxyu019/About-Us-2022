//
//  Daniyal.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Daniyal: View {
    
    @State var daniyalRotation = Angle(degrees: 60)
    @State var aboutMeRotation = Angle(degrees: 60)
    @State var daniyalScaleEffect = 0.1
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red,.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Daniyal")
                    .padding(25)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(20)
                    .scaleEffect(daniyalScaleEffect)
                    .rotation3DEffect(daniyalRotation, axis: (1, 2, 3))
                Text("About me, I am Daniyal")
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(20)
                    .rotation3DEffect(aboutMeRotation, axis: (0, 3, 0))
            }
            .onAppear {
                withAnimation(.easeInOut.repeatForever()) {
                    daniyalRotation = Angle(degrees: -30)
                    aboutMeRotation = Angle(degrees: -30)
                    daniyalScaleEffect = 1
                    
                }
            }

        }
    }
}

struct Daniyal_Previews: PreviewProvider {
    static var previews: some View {
        Daniyal()
    }
}
