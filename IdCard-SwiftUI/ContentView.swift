//
//  ContentView.swift
//  IdCard-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.64, green: 0.61, blue: 1.00, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("tentenblog")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(alignment: .center) {
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    }
                Text("tentenblog")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                Divider()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat consequat mauris nunc congue.")
                    .foregroundColor(.white)
                    .padding(EdgeInsets(
                        top: 0, leading: 30, bottom: 0, trailing: 30
                    ))
                
                Divider()
                    .padding(.bottom)
                
                InfoView(text: "+01 123 456 789", imageName: "phone.fill")
                InfoView(text: "abc@abc.com", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)  // For checking Dark Mode
    }
}


