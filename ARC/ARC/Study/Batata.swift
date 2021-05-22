//
//  Batata.swift
//  ARC
//
//  Created by Jade Silveira on 21/05/21.
//

import Foundation

class Batata {
    var holder: ((Bool) -> Void)?
    
    init() {
        print("Batata foi inicializada")
    }
    func pure(batataVirouPure: @escaping (Bool) -> Void) {
        print("Pure")
        
        let cenoura = Cenoura()
        
        cenoura.ralada { cenouraFoiRalada in
            batataVirouPure(true)
        }
    }
    deinit {
        print("Batata foi deinicializada")
    }
}
