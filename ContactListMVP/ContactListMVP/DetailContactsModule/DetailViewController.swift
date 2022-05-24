//
//  DetailViewController.swift
//  ContactListMVP
//
//  Created by Владимир on 23.05.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        phoneLabel.text = person.phone
    }
    
    @IBAction func cancelPressed() {
        dismiss(animated: true)
    }
    
}
