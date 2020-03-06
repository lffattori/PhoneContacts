//
//  ViewController.swift
//  PhoneContacts
//
//  Created by Luiza Fattori on 06/03/20.
//  Copyright © 2020 Luiza Fattori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func getContacts(){
        GetPhoneContacts.getContacts()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

