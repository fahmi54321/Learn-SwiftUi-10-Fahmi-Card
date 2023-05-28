//
//  InfoView.swift
//  Learn-SwiftUi-10-Fahmi-Card
//
//  Created by Fahmi Aziz on 21/04/23.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
            .frame( height: 50.0)
            .overlay(
                HStack
                {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(
            imageName: "phone.fill",
            text: "081267889355"
        ).previewLayout(.sizeThatFits)
    }
}
