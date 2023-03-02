//
//  ContentView.swift
//  sanFranciscoChallenge
//
//  Created by Anderson Sales on 02/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let states = States()
        List {
            Section(states.sectionTitle) {
                ForEach(states.allBrazilianStates.sorted(by: <), id: \.key) { key, value in
                    Text(value)
                        .onAppear {
                            print(states.appearedMessage, key, value)
                        }
                        .onDisappear {
                            print(states.disappearedMessage, key, value)
                        }
                }
            }.onAppear {
                states.printAllBrazilianStates()
            }
        }
        .listStyle(.plain)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
