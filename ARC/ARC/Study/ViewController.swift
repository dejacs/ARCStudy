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
    
    var acao: ((String) -> Void)?
    
    func getUser(acabou: @escaping (String) -> Void) {
        print("abobora")
        print("batata")
        acao = acabou
    }
    
    func getNonUser(completion: (String) -> Void) { // non-escaping por padrao
        let outroHolder = completion
        print("abobora")
        print("batata")
//        holder = getOtherSomething()
        completion("Não-usuário")
    }
    
//    func getSomething() -> Void { // non-escaping
//
//    }
//
//    func getOtherSomething() -> ((String) -> Void) { // escaping
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
//        let empresa = Empresa(name: "PicPay")
//        print(empresa.name + " " + empresa.pessoa.name)
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTap))
        view.addGestureRecognizer(tap)
        
        getUser { [weak self] userName in
            guard let self = self else { return }
//            self.viewController?.displaySomething(name: userName)
            
            self.interactor = ContactsInteractor(service: ContactsService())
            self.viewController = ContactsViewController(interactor: self.interactor!)
            self.interactor!.viewController = self.viewController
            self.navigationController?.pushViewController(self.viewController! as! UIViewController, animated: true)
        }
        
        getNonUser { nonUserName in
            viewController?.displaySomething(name: nonUserName)
        }
    }
    
    // ViewController > getUser > ContactsViewController > ViewController
    
    @objc
    func didTap() {
        acao!("Usuário")
        
//        let interactor = ContactsInteractor(service: ContactsService())
//        let viewController = ContactsViewController(interactor: interactor)
//        interactor.viewController = viewController
//        navigationController?.pushViewController(viewController, animated: true)
    }
}

