//
//  PersonListTableViewController.swift
//  ContactList
//
//  Created by Ivan Honcharov on 14.09.25.
//

import UIKit

class PersonListTableViewController: UITableViewController {
    private var contacts: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contacts = Person.getContacts()
        print("Contacts loaded:", contacts.count)
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ??
        UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = "\(contact.name) \(contact.surname)"
        cell.detailTextLabel?.text = contact.mail
        cell.selectionStyle = .none
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let selectedContact = contacts[indexPath.row]
            
            if let infoVC = segue.destination as? InfoViewController {
                infoVC.contact = selectedContact
            }
        }
    }
}
