//
//  Nicole.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Nicole: View {
    
    @State var helloRotation: Angle = .zero
    
    var body: some View {
        
        VStack {
            Text("hello i'm")
                .rotation3DEffect(helloRotation, axis: (0, 1, 1))
            Text("nicole")
        }
    }
}

struct Nicole_Previews: PreviewProvider {
    static var previews: some View {
        Nicole()
    }
}
