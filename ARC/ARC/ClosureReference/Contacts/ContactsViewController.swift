//
//  ContactsViewController.swift
//  ARC
//
//  Created by Jade Silveira on 14/05/21.
//

import Foundation
import UIKit

protocol ContactsDisplaying: AnyObject {
    func display(contacts: [ContactViewModel])
    func displayError()
}

class ContactsViewController: UIViewController, ContactsDisplaying {
    private let interactor: ContactsInteracting
    
    init(interactor: ContactsInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        interactor.fetchContacts()
    }
    
    func display(contacts: [ContactViewModel]) {
        
    }
    
    func displayError() {
        
    }
}
