//
//  ShaoQi.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct ShaoQi: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("aboutme@ShaoQi ~ % ")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                }
                VStack(alignment: .leading) {
                    Text("neofetch")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                }
                Spacer()
            }
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Image("shaoqi-logo.png")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                VStack(alignment: .leading) {
                    Text("aboutme@ShaoQi")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                    Spacer()
                        .frame(height: 10)
                    Text("School: Kranji Sec")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                    Text("CCA: Science & Techology")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                    Text("Age: 15")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                    Text("Interests: Programming, Cycling")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                    Text("Group: Eunos")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                    Text("GitHub: sethlsq")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                    Text("Discord: sethlsq#8449")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                }
            }
            Spacer()
                .frame(height: 15)
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("aboutme@ShaoQi ~ % ")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                }
                VStack(alignment: .leading) {
                    Text("nano links.rtf")
                      .font(.system(size: 12, weight: .regular, design: .monospaced))
                      .foregroundColor(.white)
                }
                Spacer()
            }
            Spacer()
                .frame(height: 15)
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text("UW PICO 5.09 | GNU NANO | File: links.rtf")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Spacer()
                }
                Spacer()
                    .frame(height: 10)
                Text("GitHub: [github.com/sethlsq](https://github.com/sethlsq)")
                  .font(.system(size: 12, weight: .regular, design: .monospaced))
                  .foregroundColor(.white)
                Text("Video: [youtube.com/watch?v=dQw4w9WgXcQ](https://www.youtube.com/watch?v=dQw4w9WgXcQ)")
                  .font(.system(size: 12, weight: .regular, design: .monospaced))
                  .foregroundColor(.white)
                Spacer()
                    .frame(height: 175)
                HStack(alignment: .top) {
                    Group {
                        Text("^G")
                            .font(.system(size: 12, weight: .regular, design: .monospaced))
                            .background(.white)
                        Spacer()
                            .frame(width: 5)
                        Text("^O")
                            .font(.system(size: 12, weight: .regular, design: .monospaced))
                            .background(.white)
                        Text("^R")
                            .font(.system(size: 12, weight: .regular, design: .monospaced))
                            .background(.white)
                        Text("^Y")
                            .font(.system(size: 12, weight: .regular, design: .monospaced))
                            .background(.white)
                        Text("^K Cut")
                            .font(.system(size: 12, weight: .regular, design: .monospaced))
                            .background(.white)
                    }
                    Text("^C")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Text("^X Exit")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Text("^J")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Text("^W")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Text("^V")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Text("^U")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Text("^T")
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .background(.white)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
        .background(Color.black)
    }
}

struct ShaoQi_Previews: PreviewProvider {
    static var previews: some View {
        ShaoQi()
    }
}
