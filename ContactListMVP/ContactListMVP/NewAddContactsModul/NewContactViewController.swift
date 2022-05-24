//
//  NewContactViewController.swift
//  ContactListMVP
//
//  Created by Владимир on 23.05.2022.
//

import UIKit

protocol NewContactViewControllerProtocol: AnyObject {
}

class NewContactViewController: UIViewController {
    var presenter: ContactListPresenterProtocol!
    
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var surnameTextField: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func saveButtonPressed() {
        let name = nameTextField.text
        let surname = surnameTextField.text
        let phone = phoneTextField.text
        

        let person = Person(
            name: name ?? "",
            surname: surname ?? "",
            phone: phone ?? ""

        )
        
        presenter.add(person: person)
        dismiss(animated: true)
        
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}
