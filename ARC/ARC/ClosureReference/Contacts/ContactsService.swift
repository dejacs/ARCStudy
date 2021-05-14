//
//  ContactsService.swift
//  ARC
//
//  Created by Jade Silveira on 14/05/21.
//

import Foundation

protocol ContactsServicing: AnyObject {
    func fetchContacts(completion: @escaping (Result<[Contact], Error>) -> Void)
}

class ContactsService: ContactsServicing {
    init() {
        print("Service was initialized")
    }
    func fetchContacts(completion: @escaping (Result<[Contact], Error>) -> Void) {
        DispatchQueue.global().async {
            sleep(3)
            var contacts = [Contact]()
            contacts.append(Contact(name: "Jade", number: 999999999))
            contacts.append(Contact(name: "Claudia", number: 111111111))
            contacts.append(Contact(name: "Bárbara", number: 222222222))
            DispatchQueue.main.async {
                completion(.success(contacts))
            }
        }
    }
    deinit {
        print("Service was deinitialized")
    }
}
