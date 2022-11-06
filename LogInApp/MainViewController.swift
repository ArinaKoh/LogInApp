//
//  ViewController.swift
//  LogInApp
//
//  Created by Arina on 06.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var userNameTF: UITextField!
    
    @IBAction func loginButtonPressed() {
        
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct username or password")
            return
        }
        if let inputText = userNameTF.text, inputText != "User" {
            showAlert(withTitle: "Incorrect User Name", andMessage: "Please, enter correct username")
        }
        guard let passwordInputText = passwordTF.text, !passwordInputText.isEmpty else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct username or password")
            return
        }
        if let passwordInputText = passwordTF.text, passwordInputText != "123" {
            showAlert(withTitle: "Incorrect Password", andMessage: "Please, enter correct password")
        }
        
        performSegue(withIdentifier: "goVC", sender: nil)
    }
    
    @IBAction func forgetUNButton() {
        showAlert(withTitle: "Oops", andMessage: "Your username is User")
    }
    
    @IBAction func forgetPasswordButton() {
        showAlert(withTitle: "Oops", andMessage: "Your password is 123")
    }
    
    //MARK: - Private Methods
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

