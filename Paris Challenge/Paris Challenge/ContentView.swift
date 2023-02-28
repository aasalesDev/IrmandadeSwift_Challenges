//
//  ContentView.swift
//  Paris Challenge
//
//  Created by Anderson Sales on 27/02/23.
//
import SwiftUI

struct ContentView: View {
    let titles = ["Assistidos", "Para Assistir"]
    var body: some View {
        
        ZStack {
            BackgroundColor()
            VStack {
                ZStack (alignment: .bottom) {
                    Background()
                    User()
                }
                Spacer()
                
                Title(title: titles[0])
                
                HStack {
                    MovieView()
                    MovieView()
                    MovieView()
                }
                Spacer()
                
                Title(title: titles[1])
                
                HStack {
                    MovieView()
                    MovieView()
                    MovieView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieView: View {
    var body: some View {
        Image("Movie")
            .resizable()
            .scaledToFill()
            .clipped()
            .frame(width: 120, height: 240)
            .cornerRadius(10)
    }
}

struct User: View {
    var body: some View {
        Image("anderson")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 180, height: 180, alignment: .bottom)
            .padding(.bottom, -35)
    }
}

struct Background: View {
    var body: some View {
        Image("Wallpaper")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .frame(width: .infinity, height: 150)
    }
}

struct Title: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
            Spacer()
        }.padding()
    }
}

struct BackgroundColor: View {
    var body: some View {
        Color("Blackie")
            .ignoresSafeArea()
    }
}
