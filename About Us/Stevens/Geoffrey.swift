//
//  Geoffrey.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Geoffrey: View {
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.red, .orange, .yellow, .green, .green, .green, .brown], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            Image("fork in road")
                .resizable()
                .frame(width: 1000, height: 750)
                .offset(y: 230)
            
            Image("Background (6)")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .offset(x: -25, y: -120)
            
            Image("Background (7)")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .offset(y: 150)
            
            Text("Me")
                .font(.system(size: 50))
                .offset(x: -25, y: 50)
            
        }
    }
}

struct Geoffrey_Previews: PreviewProvider {
    static var previews: some View {
        Geoffrey()
    }
}
