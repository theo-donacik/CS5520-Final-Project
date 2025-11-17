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

        guard let username = loginView.emailField.text,

              let password = loginView.passwordField.text,
              !username.isEmpty, !password.isEmpty else {
            print("Username or password empty")
            return
        }

        

        let loggedUser = User(
            username: username,
            firstName: "Namya",
            lastName: "Singh",
            dob: "01/01/2000",
            email: "\(username)@gmail.com",
            userType: "Instructor"
        )

        // Store the ACTUAL logged in user
        UserSession.shared.currentUser = loggedUser

        let vc = CoursesListViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }



    @objc func onSignUpButtonPressed() {
        let signInVC = SignInViewController()
        self.navigationController?.pushViewController(signInVC, animated: true)
    }
}
