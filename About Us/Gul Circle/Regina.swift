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
            Text("wa got chinese version some more (https://www.youtube.com/watch?v=zeFDudodFE0)")
        }
    }
}

struct Regina_Previews: PreviewProvider {
    static var previews: some View {
        Regina()
    }
}
