//
//  ContentView.swift
//  ujjawal card swiftui
//
//  Created by Ujjawal Kumar Singh on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemGreen)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("ujjawal-image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Ujjawal Singh")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(Color.white)
                Text("iOS Developer")
                    .font(.system(size:25))
                    .foregroundColor(Color.white)
                Divider()
                InfoView(text: "+91 435643467", imageName: "phone.fill")
                InfoView(text: "ujjawal19s@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text : String
    let imageName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .padding(.horizontal)
            .foregroundColor(Color.white)
            .frame(height: 50.0)
            
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    
            })
    }
}
