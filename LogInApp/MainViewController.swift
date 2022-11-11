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
    
    private let user = "User"
    private let password = "123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {  return }
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonPressed() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct username or password"
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "goVC", sender: nil)
    }
    
    @IBAction func forgetUNButton() {
        showAlert(withTitle: "Oops", andMessage: "Your username is User")
    }
    
    @IBAction func forgetPasswordButton() {
        showAlert(withTitle: "Oops", andMessage: "Your password is 123")
    }
    
    // @IBAction func forgetRegisterData(_ sender: UIButton) {
    //      sender.tag == 0
    //          ? showAlerrt()
    //          : showAlert()
    // }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - Private Methods
    
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

