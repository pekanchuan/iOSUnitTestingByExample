//
//  ViewController.swift
//  TextField
//
//  Created by 贾发 on 2021/4/12.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet private(set) var usernameField: UITextField!
    @IBOutlet private(set) var passwordField: UITextField!
    
    deinit {
        print("ViewController.deinit")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func performLogin(username: String, password: String) {
        print("Username: \(username)")
        print("Password: \(password)")
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField === usernameField {
            return !string.contains(" ")
        } else {
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === usernameField {
            passwordField.becomeFirstResponder()
        } else {
            guard let username = usernameField.text, let password = passwordField.text else { return false }
            passwordField.resignFirstResponder()
            performLogin(username: username, password: password)
        }
        return false
    }

}

