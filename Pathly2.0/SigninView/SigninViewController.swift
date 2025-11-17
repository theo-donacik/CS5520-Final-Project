//
//  SigninViewController.swift
//  Pathly
//
//  Created by Namya Singh on 10/30/25.


import UIKit

class SignInViewController: UIViewController {
    let signInView = SignInView()
    
    var selectedUserType: String?
    
    override func loadView() {
        view = signInView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Sign In"
        
        // Sign In button
        signInView.signInButton.addTarget(self, action: #selector(onSignInButtonTapped), for: .touchUpInside)
        
        // User type selection button
        signInView.userTypeButton.addTarget(self, action: #selector(onUserTypeButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - User Type Selection
    @objc func onUserTypeButtonTapped() {
        let alert = UIAlertController(title: "Select User Type", message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Student", style: .default, handler: { _ in
            self.selectedUserType = "Student"
            self.signInView.userTypeButton.setTitle("Student", for: .normal)
        }))
        
        alert.addAction(UIAlertAction(title: "Instructor", style: .default, handler: { _ in
            self.selectedUserType = "Instructor"
            self.signInView.userTypeButton.setTitle("Instructor", for: .normal)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        self.present(alert, animated: true)
    }
    
    // MARK: - Sign In
    @objc func onSignInButtonTapped() {
        
        guard let username = signInView.usernameField.text, !username.isEmpty else {
            showAlert("Please enter a username")
            return
        }

        guard let firstName = signInView.firstNameField.text, !firstName.isEmpty else {
            showAlert("Please enter your first name")
            return
        }

        guard let lastName = signInView.lastNameField.text, !lastName.isEmpty else {
            showAlert("Please enter your last name")
            return
        }

        guard let dob = signInView.dobField.text, !dob.isEmpty else {
            showAlert("Please enter your date of birth")
            return
        }

        guard let email = signInView.emailField.text, !email.isEmpty else {
            showAlert("Please enter your email")
            return
        }

        guard isValidEmail(email) else {
            showAlert("Please enter a valid email")
            return
        }

        guard let password = signInView.passwordField.text, !password.isEmpty else {
            showAlert("Please enter password")
            return
        }

        guard let confirmPassword = signInView.confirmPasswordField.text, !confirmPassword.isEmpty else {
            showAlert("Please confirm password")
            return
        }

        guard password == confirmPassword else {
            showAlert("Passwords don't match")
            return
        }

        guard let selectedUserType = selectedUserType else {
            showAlert("Please select a user type")
            return
        }

        // ✅ Save user in session
        let newUser = User(
            username: username,
            firstName: firstName,
            lastName: lastName,
            dob: dob,
            email: email,
            userType: selectedUserType
        )

        UserSession.shared.currentUser = newUser

        navigateToDashboard()
    }

    func navigateToDashboard() {
        let vc = CoursesListViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    
    func showAlert(_ message: String) {
        let alert = UIAlertController(
            title: "Error",
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
