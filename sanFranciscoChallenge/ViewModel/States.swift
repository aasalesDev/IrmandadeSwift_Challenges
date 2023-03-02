//
//  States.swift
//  sanFranciscoChallenge
//
//  Created by Anderson Sales on 02/03/23.
//

import Foundation

struct States {
    
    private (set) var randomBrazilianStates: [String : String] = [:]
    private (set) var sectionTitle = "BRAZILIAN STATES"
    private (set) var appearedMessage = "Appeared: "
    private (set) var disappearedMessage = "Disappeared: "
    
    private (set) var allBrazilianStates = [
        "AC": "Acre",
        "AL": "Alagoas",
        "AP": "Amapá",
        "AM": "Amazonas",
        "BA": "Bahia",
        "CE": "Ceará",
        "DF": "Distrito Federal",
        "ES": "Espírito Santo",
        "GO": "Goiás",
        "MA": "Maranhão",
        "MT": "Mato Grosso",
        "MS": "Mato Grosso do Sul",
        "MG": "Minas Gerais",
        "PA": "Pará",
        "PB": "Paraíba",
        "PR": "Paraná",
        "PE": "Pernambuco",
        "PI": "Piauí",
        "RJ": "Rio de Janeiro",
        "RN": "Rio Grande do Norte",
        "RS": "Rio Grande do Sul",
        "RO": "Rondônia",
        "RR": "Roraima",
        "SC": "Santa Catarina",
        "SP": "São Paulo",
        "SE": "Sergipe",
        "TO": "Tocantins"
    ]
    
    var statesQuantity: Int {
        return allBrazilianStates.count
    }
    
    var brazilianState: [String] {
        var stringsArray: [String] = []
        for _ in 0..<allBrazilianStates.count {
            for (_, value) in allBrazilianStates {
                stringsArray.append(value)
            }
        }
        return stringsArray
    }
    
    mutating func generateRandomStates() {
        let numElementsToSelect = Int.random(in: 0...statesQuantity)
        let shuffledKeys = allBrazilianStates.keys.shuffled()
        let selectedKeys = Array(shuffledKeys.prefix(numElementsToSelect))
            for key in selectedKeys {
                let value = allBrazilianStates[key]
                randomBrazilianStates[key] = value
            }
        print("=====Diplayed States=====")
        for (key, value) in randomBrazilianStates {
            print("\(key): \(value)")
        }
    }
    
    func getAllBrazilianStates() {
        print("=====All Brazilian States=====")
        for (key, value) in allBrazilianStates {
            print("\(key): \(value)")
        }
    }
    
}
