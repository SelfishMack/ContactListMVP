//
//  ContactCell.swift
//  ContactListMVP
//
//  Created by Владимир on 23.05.2022.
//

import UIKit

class ContactCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    
    func configure(with person: Person) {
        
        nameLabel.text = person.name
    }
}
