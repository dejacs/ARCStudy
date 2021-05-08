//
//  Scopes.swift
//  ARC
//
//  Created by Jade Silveira on 08/05/21.
//

import Foundation

class Scopes {
    let empresa = Empresa(name: "PicPay") // -> Class scope. It will be initialized and deinitialized within the class
    
    func method() {
        _ = Pessoa(name: "Claudia", empresa: empresa)  // -> Method scope. It will be initialized and deinitialized within the method
    }
}
