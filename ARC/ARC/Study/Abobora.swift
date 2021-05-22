//
//  Abobora.swift
//  ARC
//
//  Created by Jade Silveira on 21/05/21.
//

import Foundation

// Abobora > Batata > Abobora

class Abobora {
    private let batata: Batata
    
    init(batata: Batata) {
        self.batata = batata
        print("Abobora foi inicializada")
    }
    
    func comBatata() {
        batata.pure { [weak self] isPure in
            self?.comCenoura()
        }
    }
    
    func comCenoura() {
        print("Cenoura")
    }
    
    deinit {
        print("Abobora foi deinicializada")
    }
}
