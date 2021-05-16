//
//  Scopes.swift
//  ARC
//
//  Created by Jade Silveira on 08/05/21.
//

import Foundation

class Scopes {
    let empresa = Empresa(name: "PicPay") // -> Class scope. It will be initialized and deinitialized within the class
    
    let tuple: (String, Int) = ("Teste", 1)
    let tuple2: (valor: String, chave: Int) = (valor: "Teste", chave: 1)
    
    func method() {
        _ = Pessoa(name: "Claudia", empresa: empresa)  // -> Method scope. It will be initialized and deinitialized within the method
    }
}
