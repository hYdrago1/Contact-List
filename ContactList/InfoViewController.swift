//
//  ViewController.swift
//  ContactList
//
//  Created by Ivan Honcharov on 14.09.25.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = " \(contact.name) \(contact.surname)"
        phoneLabel.text = "Number: " + String(contact.number)
        mailLabel.text = "Email: \(contact.mail)"
    }


}

