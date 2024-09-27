//
//  James.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct James: View {
    var body: some View {
        VStack {
            Text("Hello!")
                .bold()
                .font(.system(.largeTitle))
            Text("I am James")
            Text("I have no idea what to put here.")
                .font(.caption2)
            HStack{
                Text("[Github](https://github.com/jamersonk)")
                    .padding()
                Text("[KhanAcademy](http://www.khanacademy.org/profile/jamersonk)")
            }
        }
    }
}

struct James_Previews: PreviewProvider {
    static var previews: some View {
        James()
    }
}
