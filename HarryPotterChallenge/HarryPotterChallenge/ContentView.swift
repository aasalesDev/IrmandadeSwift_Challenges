//
//  ContentView.swift
//  HarryPotterChallenge
//
//  Created by Anderson Sales on 28/02/23.
//

import SwiftUI

enum houses: String, CaseIterable {
    case corvinal = "corvinal"
    case grifinoria = "grifinoria"
    case hogwarts = "hogwarts"
    case lufalufa = "lufalufa"
    case sonserina = "sonserina"
}

struct ContentView: View {
    @State var logoImage: Image?
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
                if let image = houses.allCases.randomElement()?.rawValue {
                    self.logoImage = Image(image)
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
