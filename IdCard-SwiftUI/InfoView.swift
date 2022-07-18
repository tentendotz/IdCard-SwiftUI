//
//  InfoView.swift
//  IdCard-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/18.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("Shape Color"))
            .frame(height: 50)
            .overlay(alignment: .center) {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .font(.system(size: 25))
                        .foregroundColor(Color("Info Color"))
                }
            }
            .padding(.horizontal)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
            
    }
}
