//
//  SigninViewController.swift
//  Pathly
//
//  Created by Namya Singh on 10/30/25.
//
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
        
        
        signInView.signInButton.addTarget(self, action: #selector(onSignInButtonTapped), for: .touchUpInside)
    }
    

    
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
            showAlert("Please enter a valid email address")
            return
        }
        
        guard let password = signInView.passwordField.text, !password.isEmpty else {
            showAlert("Please enter a password")
            return
        }
        
        guard let confirmPassword = signInView.confirmPasswordField.text, !confirmPassword.isEmpty else {
            showAlert("Please confirm your password")
            return
        }
        
        guard password == confirmPassword else {
            showAlert("Passwords do not match")
            return
        }
    
        
      
        navigateToDashboard()
    }
    
    func navigateToDashboard() {
        let dashboardVC = DashboardViewController()
        navigationController?.pushViewController(dashboardVC, animated: true)
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



class DashboardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Dashboard"
        setupUI()
    }
    
    func setupUI() {
        let welcomeLabel = UILabel()
        welcomeLabel.text = "Welcome to Dashboard"
        welcomeLabel.font = .boldSystemFont(ofSize: 28)
        welcomeLabel.textAlignment = .center
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLabel)
        
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
