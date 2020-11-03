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
                    .padding(.bottom, 40)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sun.max.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "wind",
                                   temperature: 71)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "sun.haze.fill",
                                   temperature: 72)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.bolt.fill",
                                   temperature: 65)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "sunset.fill",
                                   temperature: 68)
                }
                
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

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
