//
//  Saumil.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Saumil: View {
    var body: some View {
        Color
            .red
            .ignoresSafeArea(.all)
        Text(" comrade Saumil ")
            .transition(.scale)
        Image("USSR")
            .resizable(resizingMode: .tile)
            .scaledToFit()
            
      
    }
}

struct Saumil_Previews: PreviewProvider {
    static var previews: some View {
        Saumil()
    }
}
