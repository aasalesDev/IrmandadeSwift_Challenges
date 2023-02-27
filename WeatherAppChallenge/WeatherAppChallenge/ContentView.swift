//
//  ContentView.swift
//  WeatherAppChallenge
//
//  Created by Anderson Sales on 27/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
                .cornerRadius(10)
                .padding()
            
            VStack {
                Text("São José dos Campos, SP")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("25°")
                    .fontWeight(.bold)
                    .font(.system(size: 60))
                Spacer()
                
                Image(systemName: "cloud.sun.fill")
                    .imageScale(.large)
                    .font(.system(size: 80))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .yellow)
                Spacer()
                
                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 180)
                        .cornerRadius(10)
                        .foregroundColor(.teal)
                        .padding(.leading)
                    .padding(.trailing)
                    
                    HStack {
                        VStack {
                            Text("Mon")
                                .fontWeight(.bold)
                            Image(systemName: "cloud.sun.fill")
                                .padding()
                                .foregroundColor(.white)
                            Text("25°")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                        }
                        
                        Rectangle()
                            .frame(width: 3, height: 120)
                            .foregroundColor(.gray)
                        
                        VStack {
                            Text("Tue")
                                .fontWeight(.bold)
                            Image(systemName: "cloud.sun.fill")
                                .padding()
                                .foregroundColor(.white)
                            Text("20°")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                        }
                        
                        Rectangle()
                            .frame(width: 3, height: 120)
                            .foregroundColor(.gray)
                        
                        VStack {
                            Text("Wed")
                                .fontWeight(.bold)
                            Image(systemName: "cloud.sun.rain.fill")
                                .padding()
                                .foregroundColor(.white)
                            Text("23°")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                        }
                        
                        Rectangle()
                            .frame(width: 3, height: 120)
                            .foregroundColor(.gray)
                        
                        VStack {
                            Text("Thu")
                                .fontWeight(.bold)
                            Image(systemName: "cloud.rain.fill")
                                .padding()
                                .foregroundColor(.white)
                            Text("21°")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                        }
                        
                        Rectangle()
                            .frame(width: 3, height: 120)
                            .foregroundColor(.gray)
                        
                        VStack {
                            Text("Fri")
                                .fontWeight(.bold)
                            Image(systemName: "cloud.rain.fill")
                                .padding()
                                .foregroundColor(.white)
                            Text("19°")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                        }
                    }
                }
                .padding()
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
