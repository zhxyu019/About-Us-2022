//
//  HaoYuan.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct HaoYuan: View {
    @State var haoyuan_rotation = 45
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            Color(.purple).ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("haoyuan")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .rotation3DEffect(
                            .degrees(Double(haoyuan_rotation)),
                            axis: (x: 2, y: 1, z: 0)
                        )                        .foregroundColor(.white)
                        .padding()
                    Image("HaoYuan_dog")
                        .rotationEffect(.degrees(Double(haoyuan_rotation)))
                    
                        .mask(
                            Circle()
                        )
                    
                }
                Spacer()
                    .frame(height:50)
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .background(.black)
                        .frame(width:300, height:100)
                        .padding()
                        .rotationEffect(.degrees(60))
                    Text("not copied from jiachen")
                        .font(.title)
                        .rotationEffect(.degrees(40))
                }
                Spacer()
                    .frame(height:50)
                ZStack{
                    Button{
                        openURL(URL(string: "https://github.com/LHY-42")!)
                    } label: {
                        Text("{} Github")
                            .padding(30)
                            .background(.black)
                            .foregroundColor(.white)
                            .rotationEffect(.degrees(300))
                    }
                }
                
            }
            
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                haoyuan_rotation = 15
            }
            
            
            
        }
    }
    
}
struct HaoYuan_Previews: PreviewProvider {
    static var previews: some View {
        HaoYuan()
    }
}
