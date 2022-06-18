//
//  Regina.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Regina: View {
    var body: some View {
        VStack {
            Text("I need sleep")
            Image("marshall pro")
                .resizable()
                .scaledToFit()
            Text("I LOVE MARSHALL YEAH")
        }
    }
}

struct Regina_Previews: PreviewProvider {
    static var previews: some View {
        Regina()
    }
}
