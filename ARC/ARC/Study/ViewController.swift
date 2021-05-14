//
//  ViewController.swift
//  ARC
//
//  Created by Jade Silveira on 07/05/21.
//

import UIKit

class ViewController: UIViewController {
    var interactor: ContactsInteracting?
    var viewController: ContactsDisplaying?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
//        let empresa = Empresa(name: "PicPay")
//        print(empresa.name + " " + empresa.pessoa.name)
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTap))
        view.addGestureRecognizer(tap)
    }
    
    @objc
    func didTap() {
        interactor = ContactsInteractor(service: ContactsService())
        viewController = ContactsViewController(interactor: interactor!)
        
        interactor!.viewController = viewController
        navigationController?.pushViewController(viewController! as! UIViewController, animated: true)
    }
}

