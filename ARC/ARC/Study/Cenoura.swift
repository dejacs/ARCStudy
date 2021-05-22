//
//  Cenoura.swift
//  ARC
//
//  Created by Jade Silveira on 21/05/21.
//

import Foundation

class Cenoura {
    func ralada(cenouraFoiRalada: @escaping (Bool) -> Void) {
        print("Ralada")
        cenouraFoiRalada(true)
    }
}
