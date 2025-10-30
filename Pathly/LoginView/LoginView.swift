//
//  LoginView.swift
//  Pathly
//
//  Created by theo on 10/30/25.
//

import UIKit

class LoginView: UIView {
    var contentWrapper: UIScrollView!
    var emailField: UITextField!
    var passwordField: UITextField!
    var loginButton: UIButton!
    var signUpButton: UIButton!
    var logoImage: UIImageView!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupContentWrapper()
        setupEmailField()
        setupPasswordField()
        setupLoginButton()
        setupSignUpButton()
        setupLogoImage()
        
        initConstraints()
        
    }
    
    func setupLogoImage() {
        logoImage = UIImageView()
        logoImage.image = UIImage(named: "Logo")
        logoImage.contentMode = .scaleAspectFit
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        contentWrapper.addSubview(logoImage)
    }
    
    func setupLoginButton() {
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        contentWrapper.addSubview(loginButton)
    }
    
    func setupSignUpButton() {
        signUpButton = UIButton(type: .system)
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        contentWrapper.addSubview(signUpButton)
    }
    
    func setupContentWrapper() {
        contentWrapper = UIScrollView()
        contentWrapper.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(contentWrapper)
    }
    
    func setupEmailField(){
        emailField = UITextField()
        emailField.placeholder = "Email"
        emailField.layer.borderColor = UIColor.lightGray.cgColor
        emailField.layer.borderWidth = 1.0
        emailField.translatesAutoresizingMaskIntoConstraints = false
        emailField.autocapitalizationType = .none
        contentWrapper.addSubview(emailField)
    }

    
    func setupPasswordField(){
        passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.layer.borderColor = UIColor.lightGray.cgColor
        passwordField.layer.borderWidth = 1.0
        passwordField.autocapitalizationType = .none
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        contentWrapper.addSubview(passwordField)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            contentWrapper.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            contentWrapper.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            contentWrapper.widthAnchor.constraint(equalTo:self.safeAreaLayoutGuide.widthAnchor),
            contentWrapper.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor),
            
            logoImage.topAnchor.constraint(equalTo: contentWrapper.topAnchor, constant: 32),
            logoImage.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            logoImage.widthAnchor.constraint(equalToConstant: 200),
            
            emailField.topAnchor.constraint(equalTo: self.logoImage.bottomAnchor, constant: 32),
            emailField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            emailField.widthAnchor.constraint(lessThanOrEqualTo: self.safeAreaLayoutGuide.widthAnchor),
            emailField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            emailField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
                       
            passwordField.topAnchor.constraint(equalTo: self.emailField.bottomAnchor, constant: 32),
            passwordField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            passwordField.widthAnchor.constraint(lessThanOrEqualTo: self.safeAreaLayoutGuide.widthAnchor),
            passwordField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            passwordField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            signUpButton.topAnchor.constraint(equalTo: self.passwordField.bottomAnchor, constant: 32),
            signUpButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            
            loginButton.topAnchor.constraint(equalTo: self.passwordField.bottomAnchor, constant: 32),
            loginButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            loginButton.bottomAnchor.constraint(equalTo: contentWrapper.bottomAnchor),


        ])
    }
}
