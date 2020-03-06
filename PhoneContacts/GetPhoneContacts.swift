//
//  PhoneContacts.swift
//  PhoneContacts
//
//  Created by Luiza Fattori on 06/03/20.
//  Copyright © 2020 Luiza Fattori. All rights reserved.


import Foundation
import Contacts

class GetPhoneContacts {
    class func getContacts() {
        let contactStore = CNContactStore()
        var contacts = [CNContact]()
        let keys = [
                CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
                        CNContactPhoneNumbersKey,
                        CNContactEmailAddressesKey
                ] as [Any]
        let request = CNContactFetchRequest(keysToFetch: keys as! [CNKeyDescriptor])
        do {
            try contactStore.enumerateContacts(with: request){
                    (contact, stop) in
                // Array containing all unified contacts from everywhere
                contacts.append(contact)
                for phoneNumber in contact.phoneNumbers {
                    if let number = phoneNumber.value as? CNPhoneNumber, let label = phoneNumber.label {
                        print("\(contact.givenName) - \(number.stringValue)")
                    }
                }
            }
        } catch {
            print("unable to fetch contacts")
        }
    }

}
