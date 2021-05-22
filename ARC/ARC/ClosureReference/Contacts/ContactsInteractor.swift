//
//  ContactsInteractor.swift
//  ARC
//
//  Created by Jade Silveira on 14/05/21.
//

import Foundation

protocol ContactsInteracting: AnyObject {
    var viewController: ContactsDisplaying? { get set}
    func fetchContacts()
}

class ContactsInteractor: ContactsInteracting { // Interactor > viewController > Interactor
    private let service: ContactsServicing
    weak var viewController: ContactsDisplaying?
    
    var contactsDataSource: [ContactViewModel] = []
    
    init(service: ContactsServicing) {
        self.service = service
        print("Interactor was initialized")
    }
    
    func fetchContacts() {
        service.fetchContacts { result in
            switch result {
            case .success(let contacts):
                self.set(contacts: contacts)
                self.viewController?.display(contacts: self.contactsDataSource)
            case .failure:
                self.viewController?.displayError()
            }
        }
    }
    
    func set(contacts: [Contact]) {
        for contact in contacts {
            let contactViewModel = ContactViewModel(name: contact.name, number: contact.number.description)
            contactsDataSource.append(contactViewModel)
        }
    }
    
    deinit {
        print("Interactor was deinitialized")
    }
}
