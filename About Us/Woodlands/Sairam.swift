//
//  Sairam.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}


struct Sairam: View {
    @State private var showWebView = false
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            ZStack {
                Color("Sairam_RickColour")
                HStack(alignment: .center) {
                    HStack {
                        Image("Sairam_Rick2")
                            .resizable()
                            .scaledToFit()
                            .mask(Circle())
                        ZStack {
                            VStack {
                                Text("Sairam Suresh")
                                    .bold()
                                    .italic()
                                    .font(Font.custom("Ethnocentric", size: 30))
                                Text("A Programmer who mostly does Python :D")
                                    .multilineTextAlignment(.center)
                                    .font(Font.custom("Ethnocentric", size: 15))
                            }
                        }
                        
                    }.background(Color("Sairam_RickColour"))
                        
                    
                }.background(Image("Sairam_Rick")
                    .scaledToFill())
                    .transition(.slide)
            }
            .tabItem {
                HStack {
                    Image(systemName: "creditcard")
                    Text("Name Card")
                }
                
            }.tag(1)
                .ignoresSafeArea()
            
            
            
            Form {
                Section {
                    Image("Sairam_Rick2")
                        .resizable()
                        .scaledToFit()
                        .mask(Circle())
                    Text("I am Sairam Suresh, a 14-year-old who is currently studying at the School of Science and Technology, Singapore. I am a self-taught programmer and a beginner graphical user interface designer. I started my journey in programming in Primary 2 and I started with Ruby.  I am now currently learning Python as my main skill. You may take a look in my website below. ")
                    
                    Button("My Website") {
                        showWebView.toggle()
                    }
                    .sheet(isPresented: $showWebView, onDismiss: {
                        tabSelection = 2
                    }) {
                        WebView(url: URL(string: "https://sites.google.com/s2021.ssts.edu.sg/sairam-suresh/home")!)
                    }
                }
                HStack {
                    Image("Sairam_Rick2")
                        .resizable()
                        .scaledToFit()
                        .mask(Circle())
                    Text("I will never: \n - Give you up \n - Let you down \n - Run around \n - Desert you \n - Make you cry \n - Say goodbye \n - Tell a lie \n - Hurt you \n:Sairam")
                        .bold()
                        .multilineTextAlignment(.leading)
                }
            }
            .tabItem {
                HStack {
                    Image(systemName: "newspaper")
                    Text("Resume")
                }
            }.tag(2)
        }
    }
}

struct Sairam_Previews: PreviewProvider {
    static var previews: some View {
        Sairam()
    }
}
