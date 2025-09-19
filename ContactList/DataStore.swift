//
//  DataStore.swift
//  ContactList
//
//  Created by Ivan Honcharov on 15.09.25.
//

import Foundation

class DataBaseService {
    static let shared = DataBaseService()
    
    private init() {}
    
    let names: [String] = [
        "Jack",
        "Ivan",
        "Steven",
        "Logan",
        "Max",
        "Ted",
        "Nicola",
        "Leony",
        "Sarah",
        "Stacy"
    ]
    
    let surnames: [String] = [
        "Jankin",
        "Pol",
        "Braun",
        "Muller",
        "King",
        "Dow",
        "Smith",
        "Butler",
        "Black",
        "Murphy"
    ]
    
    let mails: [String] = [
        "test.user1@example.com",
        "anna.smith@fakemail.net",
        "john.doe@dummy.org",
        "random.guy@nowhere.io",
        "fake.account@sample.co",
        "maria.klein@mockmail.de",
        "ivan.petrov@placeholder.ru",
        "ghost.user@voidmail.com",
        "sample.contact@nomail.xyz",
        "jane.doe@notreal.info"
    ]
    
    let numbers: [String] = [
        "+491521234567",
        "+12025550147",
        "+447700900123",
        "+33612345678",
        "+393456789012",
        "+817012345678",
        "+34612345678",
        "+61412345678",
        "+46701234567",
        "+31612345678"
    ]
}
