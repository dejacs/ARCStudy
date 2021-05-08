//
//  ViewController.swift
//  ARC
//
//  Created by Jade Silveira on 07/05/21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let empresa = Empresa(name: "PicPay")
        print(empresa.name + " " + empresa.pessoa.name)
    }
}

