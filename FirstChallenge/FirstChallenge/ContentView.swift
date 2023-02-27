//
//  ContentView.swift
//  FirstChallenge
//
//  Created by Anderson Sales on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ///Comments:
        VStack {
            HStack{
                Text("Challenge Time")
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                //Spacer()
            }
            .padding()
            
            HStack {
                Rectangle()
                    .fill()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                Spacer()
                Circle()
                    .fill()
                    .frame(width: 50)
                    .foregroundColor(.red)
                Spacer()
                Ellipse()
                    .fill()
                    .frame(width: 50, height: 25)
                    .foregroundColor(.green)
                Spacer()
                Capsule()
                    .fill()
                    .frame(width: 50, height: 25)
                    .foregroundColor(.black)
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .fill()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .padding()
            
            HStack {
                Text("Square")
                    .foregroundColor(.blue)
                Spacer()
                Text("Circle")
                    .foregroundColor(.red)
                Spacer()
                Text("Ellipse")
                    .foregroundColor(.green)
                Spacer()
                Text("Capsule")
                    .foregroundColor(.black)
                Spacer()
                Text("Corner")
                    .foregroundColor(.yellow)
            }
            .padding()
            
            HStack {
                Image(systemName: "cloud.sun.rain.fill")
                    .font(.system(size: 50))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .yellow, .blue)
                Spacer()
                Image(systemName: "cloud.drizzle.fill")
                    .font(.system(size: 50))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .red)
                Spacer()
                Image(systemName: "cloud.rain.fill")
                    .font(.system(size: 50))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .green)
                Spacer()
                Image(systemName: "cloud.heavyrain.fill")
                    .font(.system(size: 50))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .black)
                Spacer()
                Image(systemName: "cloud.hail.fill")
                    .font(.system(size: 50))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .yellow)
                Spacer()
            }
            .padding()
            
            HStack {
                VStack{
                    Image(systemName: "cloud.snow.fill")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.gray, .blue)
                    ZStack{
                        Capsule()
                            .frame(width: 50, height: 20)
                            .foregroundColor(.purple)
                        Text("Snow")
                            .padding()
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                VStack{
                    Image(systemName: "cloud.drizzle.fill")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.gray, .red)
                    ZStack{
                        Capsule()
                            .frame(width: 50, height: 20)
                            .foregroundColor(.purple)
                        Text("Light")
                            .padding()
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                VStack{
                    Image(systemName: "cloud.rain.fill")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.gray, .green)
                    ZStack{
                        Capsule()
                            .frame(width: 50, height: 20)
                            .foregroundColor(.purple)
                        Text("Medium")
                            .lineLimit(1)
                            .padding()
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                VStack{
                    Image(systemName: "cloud.heavyrain.fill")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.gray, .black)
                    ZStack{
                        Capsule()
                            .frame(width: 50, height: 20)
                            .foregroundColor(.purple)
                        Text("Heavy")
                            .padding()
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                VStack{
                    Image(systemName: "cloud.hail.fill")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.gray, .black)
                    ZStack{
                        Capsule()
                            .frame(width: 50, height: 20)
                            .foregroundColor(.purple)
                        Text("Hail")
                            .padding()
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
