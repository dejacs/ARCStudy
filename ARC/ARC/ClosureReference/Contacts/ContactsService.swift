//
//  ContactsService.swift
//  ARC
//
//  Created by Jade Silveira on 14/05/21.
//

import Foundation

protocol ContactsServicing: AnyObject {
    func fetchContacts(completion: (Result<[Contact], Error>) -> Void)
}

class ContactsService: ContactsServicing {
    init() {
        print("Service was initialized")
    }
    func fetchContacts(completion: (Result<[Contact], Error>) -> Void) {
        completion(.success([Contact]()))
    }
    deinit {
        print("Service was deinitialized")
    }
}
