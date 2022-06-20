//
//  Yuhan.swift
//  About Us
//
//  Created by Jia Chen Yee on 17/6/22.
//

import SwiftUI

struct Yuhan: View {
        @State var press = 0

        @State var message = "Not yet >:("

        @State var link = "https://i.imgflip.com/1b40yd.jpg"
        @State var isSheetShown = false
    @State var image = ""

        var body: some View {

            ZStack {

                Color.black

                VStack(alignment:.center){

                HStack(alignment:.center){
                    VStack(alignment:.center){

                        Text(" Du Yuhan ")

                            .bold()

                            .italic()

                            .font(.system(size:40))

                            .foregroundColor(.green)

                            .background(.black)

                            .padding(1)

                            .background(.white)

                            .padding()

                        Text("Your average Napoleonic wars history enjoyer and Red Dead Redemption 2 enthusiast.")

                            .padding()

                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)

                        HStack (alignment: .top) {

                            Link(destination: URL(string: "mailto:yuhan.du@gmail.com")!) {

                                Image(systemName: "mail.fill")

                            }

                            Link(destination: URL(string: "https://yuhandu.wixsite.com/my-site")!){

                                Image(systemName: "person.fill")

                            }

                            Link(destination: URL(string: "https://youtu.be/dQw4w9WgXcQ")!){

                                Image(systemName: "drop.fill")

                            }

                        }

                    }

                    

                    

                    }

                    Button {

                        press += 1

                        if press == 12 {

                            message = "Good Job!"

                            link = "https://youtu.be/SXvQ1nK4oxk"

                            }

                    }label: {

                        Text(" Is this a bird? ")

                            .padding()

                            .foregroundColor(.white)

                            .background(.green)

                            .cornerRadius(5)

                            .font(.system(size:20))

                            

                    }

                    .padding()

                    

                    Link (message, destination: URL(string: link)!)
                        .padding()

                    
                    Button{
                        isSheetShown = true
                    }label: {
                        Text("Click here for enlightenment")
                            .foregroundColor(.white)
                            .padding(10)
                            .background(.blue)
                            .cornerRadius(10)
                            .font(.system(size:20))
                    }
                    .sheet(isPresented: $isSheetShown) {
                        VStack(alignment: .center, spacing: 10){
                            
                            if image != ""{
                                Image(image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .padding()
                            }
                            Image("Happy poinko")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .padding()
                            Text("Comrade your efforts are recognised and the State thanks you for your service")
                                .padding()
                                .multilineTextAlignment(.center)
                            Button{
                                withAnimation{
                                    image = "USSR"
                                }
                            }label: {
                                Text("I serve the soviet Union")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(20)
                            }
                            .padding()
                            
                        }
                    }
                }

                    }
                }

            }



struct Yuhan_Previews: PreviewProvider {
    static var previews: some View {
        Yuhan()
    }
}
