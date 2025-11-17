//
//  LoginViewController.swift
//  Pathly
//
//  Created by theo on 10/30/25.
//
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Log In"
        
        loginView.loginButton.addTarget(self, action: #selector(onLoginButtonPressed), for: .touchUpInside)
        loginView.signUpButton.addTarget(self, action: #selector(onSignUpButtonPressed), for: .touchUpInside)
    }
    
    @objc func onLoginButtonPressed() {
        
        let username = loginView.emailField.text
        let password = loginView.passwordField.text
        
        if (username!.isEmpty || password!.isEmpty) {
            print("Username or password empty")
            return
        }


        let loggedUser = User(
            username: username!,
            firstName: "Namya",
            lastName: "Singh",
            dob: "01/01/2000",
            email: "\(username!)@gmail.com",
            userType: "Instructor"
        )
        
        let vc = CoursesListViewController()
        vc.currentUser = loggedUser
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func onSignUpButtonPressed() {
        let signInController = SignInViewController()
        self.navigationController?.pushViewController(signInController, animated: true)
    }
}

