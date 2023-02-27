//
//  ContentView.swift
//  SecondChallenge
//
//  Created by Anderson Sales on 27/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //VStack {
                Circle()
                    .frame(width: 240)
                    .foregroundColor(.blue)
            //}
            //VStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 150, height: 125)
                    .foregroundColor(.red)
            //}
            //VStack {
                RoundedRectangle(cornerSize: CGSize(width: 200, height: 50))
                    .foregroundColor(.orange)
                    .frame(width: 360, height: 50)
            //}
            //VStack {
                Text("Irmandade Swift")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            //}
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
