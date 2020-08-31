//
//  ViewController.swift
//  AboutMe
//
//  Created by Vladimir on 30/08/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private var user = UserApp()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        passwordTextField.enablesReturnKeyAutomatically = true
        
        user = UserApp.getLogInData()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
            
        } else if textField == passwordTextField {
            logIn() 
            performSegue(withIdentifier: "showUserInfo", sender: nil)
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as!
        UserInfoWelcomePageViewController
        destinationVC.userName = userNameTextField.text 
    }
    
    @IBAction func unwindSeque(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "User name", message: user.userName)
    }
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Password", message: user.userPassword)
    }
    @IBAction func logInButtonPressed() {
        logIn()
    }
    
    private func logIn() {
        if userNameTextField.text != user.userName
            || passwordTextField.text != user.userPassword {
            showAlert(title: "Incorrect User Name or Password",
                      message: "Please insert correct User Name or Password")
        }
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
