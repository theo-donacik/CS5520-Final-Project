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
        let dashboardController = CourseViewController()
        self.navigationController?.pushViewController(dashboardController, animated: true)
    }
    
    @objc func onSignUpButtonPressed() {
        let signInController = SignInViewController()
        self.navigationController?.pushViewController(signInController, animated: true)
    }
}

