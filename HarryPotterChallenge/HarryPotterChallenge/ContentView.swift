//
//  ContentView.swift
//  HarryPotterChallenge
//
//  Created by Anderson Sales on 28/02/23.
//

import SwiftUI

enum houses: String {
    case corvinal = "corvinal"
    case grifinoria = "grifinoria"
    case hogwarts = "hogwarts"
    case lufalufa = "lufalufa"
    case sonserina = "sonserina"
}

struct ContentView: View {
    @State var logoImage: Image?
    @State var count = 0
    var body: some View {
        VStack {
            Group {
                Text("Qual a sua casa em Harry Potter?")
                    .fontWeight(.heavy)
                    .font(.system(size: 36))
                logoImage?
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .scaledToFit()
            }.offset(y: -50)
            Button {
                count = Int.random(in: 0...4)
                if count == 0 {
                    self.logoImage = Image(houses.corvinal.rawValue)
                } else if count == 1 {
                    self.logoImage = Image(houses.grifinoria.rawValue)
                } else if count == 2 {
                    self.logoImage = Image(houses.hogwarts.rawValue)
                } else if count == 3 {
                    self.logoImage = Image(houses.lufalufa.rawValue)
                } else if count == 4 {
                    self.logoImage = Image(houses.sonserina.rawValue)
                }
            } label: {
                Text("SORTEAR")
                    .font(.title)
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 65)
            .background(Color.black)
            .cornerRadius(10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
