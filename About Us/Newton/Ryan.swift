//
//  Ryan.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Ryan: View {
    var body: some View {
        VStack {
            VStack{
                Text("Ryan Tung")
                    .font(.system(size: 50)
                        .bold())
                    .foregroundColor(.mint)
                    .padding()
                
                Text("/Coder/Hacker/Defence Contractor")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .padding(.bottom)
                
                Text("Visit my website or talk to me!")
                    .scaledToFit()
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .padding()
                HStack{
                    Link(destination: URL(string:"https://sites.google.com/s2021.ssts.edu.sg/ryantung/home")!){
                        Image(systemName:"globe")}
                    Link(destination: URL(string:"mailto:ryan_tung_tze_jin@s2021.ssts.edu.sg")!){
                        Image(systemName:"mail")}}
            }}
        
        
    }
}

struct Ryan_Previews: PreviewProvider {
    static var previews: some View {
        Ryan()
    }
}
