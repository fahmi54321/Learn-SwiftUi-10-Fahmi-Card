//
//  ContentView.swift
//  Learn-SwiftUi-10-Fahmi-Card
//
//  Created by Fahmi Aziz on 17/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("fahmi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(
                                Color.white,lineWidth: 5.0
                            )
                    )
                Text("Fahmi")
                    .font(
                        .custom("Pacifico-Regular",
                                size: 40.0
                               )
                    )
                    .bold()
                    .foregroundColor(.white)
                Text("Mobile Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25.0)
                    )
                Divider()
                InfoView(
                    imageName: "phone.fill",
                    text: "081267889355"
                )
                InfoView(imageName: "envelope.fill", text: "fahmi@gmail.com"
                )
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


