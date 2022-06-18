//
//  Daryl.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Daryl: View {
    @State var lineLength = 0.0
    
    func timer(){
        lineLength = 0
        withAnimation(Animation.easeInOut(duration: 60)){
            lineLength = 1
        }
        
        
        Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { timer in
            sleep(5)
            lineLength = 0
            withAnimation(Animation.easeInOut(duration: 60)){
                lineLength = 1
            }
        }
    }
    
    var body: some View {
        ZStack{
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                for _ in 1 ... 1500 {
                    let x = Int.random(in: 0...400)
                    let y = Int.random(in: 0...750)
                    withAnimation{
                        path.addLine(to: CGPoint(x: x, y: y))
                    }
                }
                path.closeSubpath()
            }
            .trim(from: lineLength * 2 - 1 , to: lineLength)
            .stroke(.cyan, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            .task {
                timer()
            }
            
            VStack{
                Text("Daryl")
                    .font(.largeTitle)
                    .padding()
                Text("The line descibes Daryl's life")
                    .font(.title)
                    .padding()
                Text("Completly random, with no fixed points except his birth and his inevitable, slow death.")
                    .font(.title2)
                    .padding()
            }
        }
    }
}

struct Daryl_Previews: PreviewProvider {
    static var previews: some View {
        Daryl()
    }
}
