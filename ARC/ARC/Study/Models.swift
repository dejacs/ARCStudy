//
//  Pessoa.swift
//  ARC
//
//  Created by Jade Silveira on 07/05/21.
//

import Foundation

class Pessoa {
    var name: String
//    var empresa: Empresa -> strong reference causes retain cycle
    weak var empresa: Empresa? // -> weak reference breaks retain cycle
    
    init(name: String, empresa: Empresa) {
        self.name = name
        self.empresa = empresa
        print("\(name) foi inicializada na memória")
    }
    
    deinit {
        print("\(name) foi deinicializada da memória")
    }
}

class Empresa {
    lazy var pessoa = Pessoa(name: "Bárbara", empresa: self)
    var name: String
    
    init(name: String) {
        self.name = name
        print("\(name) foi inicializada na memória")
    }
    
    deinit {
        print("\(name)) foi deinicializada da memória")
    }
}

struct Movel {
    var name: String
}
