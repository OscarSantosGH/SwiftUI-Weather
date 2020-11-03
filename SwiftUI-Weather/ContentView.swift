//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Oscar Santos on 11/2/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 8) {
                Text("Boca Raton, FL")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140, height: 140)
                Text("73°")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
