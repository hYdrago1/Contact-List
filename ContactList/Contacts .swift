//
//  Contacts .swift
//  ContactList
//
//  Created by Ivan Honcharov on 15.09.25.
//

import Foundation

class Person {
    let name: String
    let surname: String
    let mail: String
    let number: String
    
    init(name: String, surname: String, mail: String, number: String) {
        self.name = name
        self.surname = surname
        self.mail = mail
        self.number = number
    }

    static func getContacts() -> [Person] {
        
        let names = DataBaseService.shared.names.shuffled()
        let surnames = DataBaseService.shared.surnames.shuffled()
        let mails = DataBaseService.shared.mails.shuffled()
        let numbers = DataBaseService.shared.numbers.shuffled()
        
        let count = min(names.count, surnames.count, mails.count, numbers.count)
        var contacts: [Person] = []
        
        var usedName: Set<String> = []
        var usedSurname: Set<String> = []
        var usedMail: Set<String> = []
        var usedNumber: Set<String> = []
        
        for i in 0..<count  {
            let name = names[i]
            let surname = surnames[i]
            let mail = mails[i]
            let number = numbers[i]
            
            if usedName.contains(name) || usedSurname.contains(surname),
               usedMail.contains(mail) || usedNumber.contains(number) {
                continue
            }
            
            let contact = Person(
                name: names[i],
                surname: surnames[i],
                mail: mails[i],
                number: numbers[i]
            )
            contacts.append(contact)
            
            usedName.insert(name)
            usedSurname.insert(surname)
            usedMail.insert(mail)
            usedNumber.insert(number)
            
            
        }
        
        return contacts
    }
    
}
