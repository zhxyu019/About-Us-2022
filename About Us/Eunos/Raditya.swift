//
//  Raditya.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Raditya: View {
    var body: some View {
        ZStack{
            
            Color.white
                .ignoresSafeArea(.all)
                .contrast(1.5)
            
            VStack(alignment: .trailing){
                
                
                ZStack {
                    
                    Image("raditya-pfp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    .cornerRadius(300)
                    
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 300, height: 300)
                        
                    
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 300, height: 300)
                        .offset(x: 5)
                    
                    
                }

                
                    
                
                ZStack() {
                    
                    Text("Raditya Aryo [W]")
                        .foregroundColor(.black)
                        .font(.system(.title, design: .serif))
                        .padding()
                        .frame(width: 300, height: 60)
                        .background(.gray)
                        .brightness(0.2)
                        .cornerRadius(12)
                        
                    
                    Text("Hello, My Name is")
                        .padding()
                        .frame(height: 30)
                        .background(.yellow)
                        .cornerRadius(12)
                        .offset(x: -60, y: -30)
        
                }
                .offset(y: -30)
                
            }
        }
        
        
    }
}

struct Raditya_Previews: PreviewProvider {
    static var previews: some View {
        Raditya()
    }
}
