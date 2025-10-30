//
//  SigninView.swift
//  Pathly
//
//  Created by Namya Singh on 10/30/25.
//

import UIKit

class SignInView: UIView {
    var contentWrapper: UIScrollView!
    var contentView: UIView!
    
    var titleLabel: UILabel!
    
    var usernameLabel: UILabel!
    var usernameField: UITextField!
    
    var firstNameLabel: UILabel!
    var firstNameField: UITextField!
    
    var lastNameLabel: UILabel!
    var lastNameField: UITextField!
    
    var dobLabel: UILabel!
    var dobField: UITextField!
    
    var emailLabel: UILabel!
    var emailField: UITextField!
    
    var passwordLabel: UILabel!
    var passwordField: UITextField!
    
    var confirmPasswordLabel: UILabel!
    var confirmPasswordField: UITextField!
    
    var userTypeLabel: UILabel!
    var userTypeButton: UIButton!
    
    var signInButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        
        setupContentWrapper()
        setupContentView()
        setupTitleLabel()
        setupUsernameField()
        setupFirstNameField()
        setupLastNameField()
        setupDOBField()
        setupEmailField()
        setupPasswordField()
        setupConfirmPasswordField()
        setupSignInButton()
        
        initConstraints()
    }
    
    func setupContentWrapper() {
        contentWrapper = UIScrollView()
        contentWrapper.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(contentWrapper)
    }
    
    func setupContentView() {
        contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentWrapper.addSubview(contentView)
    }
    
    func setupTitleLabel() {
        titleLabel = UILabel()
        titleLabel.text = "SignIn"
        titleLabel.font = .systemFont(ofSize: 34, weight: .regular)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
    }
    
    func setupUsernameField() {
        usernameLabel = UILabel()
        usernameLabel.text = "UserName"
        usernameLabel.font = .systemFont(ofSize: 16)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(usernameLabel)
        
        usernameField = UITextField()
        usernameField.placeholder = "UserName"
        usernameField.borderStyle = .roundedRect
        usernameField.backgroundColor = UIColor.systemGray6
        usernameField.autocapitalizationType = .none
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(usernameField)
    }
    
    func setupFirstNameField() {
        firstNameLabel = UILabel()
        firstNameLabel.text = "FirstName"
        firstNameLabel.font = .systemFont(ofSize: 16)
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(firstNameLabel)
        
        firstNameField = UITextField()
        firstNameField.placeholder = "FirstName"
        firstNameField.borderStyle = .roundedRect
        firstNameField.backgroundColor = UIColor.systemGray6
        firstNameField.autocapitalizationType = .none
        firstNameField.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(firstNameField)
    }
    
    func setupLastNameField() {
        lastNameLabel = UILabel()
        lastNameLabel.text = "Lastname"
        lastNameLabel.font = .systemFont(ofSize: 16)
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(lastNameLabel)
        
        lastNameField = UITextField()
        lastNameField.placeholder = "LastName"
        lastNameField.borderStyle = .roundedRect
        lastNameField.backgroundColor = UIColor.systemGray6
        lastNameField.autocapitalizationType = .none
        lastNameField.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(lastNameField)
    }
    
    func setupDOBField() {
        dobLabel = UILabel()
        dobLabel.text = "DOB"
        dobLabel.font = .systemFont(ofSize: 16)
        dobLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dobLabel)
        
        dobField = UITextField()
        dobField.placeholder = "MM/DD/YYYY"
        dobField.borderStyle = .roundedRect
        dobField.backgroundColor = UIColor.systemGray6
        dobField.autocapitalizationType = .none
        dobField.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dobField)
    }
    
    func setupEmailField() {
        emailLabel = UILabel()
        emailLabel.text = "Email"
        emailLabel.font = .systemFont(ofSize: 16)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(emailLabel)
        
        emailField = UITextField()
        emailField.placeholder = "Email"
        emailField.borderStyle = .roundedRect
        emailField.backgroundColor = UIColor.systemGray6
        emailField.keyboardType = .emailAddress
        emailField.autocapitalizationType = .none
        emailField.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(emailField)
    }
    
    func setupPasswordField() {
        passwordLabel = UILabel()
        passwordLabel.text = "Password"
        passwordLabel.font = .systemFont(ofSize: 16)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(passwordLabel)
        
        passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.borderStyle = .roundedRect
        passwordField.backgroundColor = UIColor.systemGray6
        passwordField.isSecureTextEntry = true
        passwordField.autocapitalizationType = .none
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(passwordField)
    }
    
    func setupConfirmPasswordField() {
        confirmPasswordLabel = UILabel()
        confirmPasswordLabel.text = "Confirm Password"
        confirmPasswordLabel.font = .systemFont(ofSize: 16)
        confirmPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(confirmPasswordLabel)
        
        confirmPasswordField = UITextField()
        confirmPasswordField.placeholder = "Confirm Password"
        confirmPasswordField.borderStyle = .roundedRect
        confirmPasswordField.backgroundColor = UIColor.systemGray6
        confirmPasswordField.isSecureTextEntry = true
        confirmPasswordField.autocapitalizationType = .none
        confirmPasswordField.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(confirmPasswordField)
    }
    
    
    
    func setupSignInButton() {
        signInButton = UIButton(type: .system)
        signInButton.setTitle("Signin", for: .normal)
        signInButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .medium)
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.backgroundColor = .systemBlue
        signInButton.layer.cornerRadius = 8
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(signInButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            
            contentWrapper.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            contentWrapper.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            contentWrapper.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            contentWrapper.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            
            
            contentView.topAnchor.constraint(equalTo: contentWrapper.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: contentWrapper.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: contentWrapper.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: contentWrapper.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: contentWrapper.widthAnchor),
            
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
          
            usernameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            usernameLabel.widthAnchor.constraint(equalToConstant: 120),
            
            usernameField.centerYAnchor.constraint(equalTo: usernameLabel.centerYAnchor),
            usernameField.leadingAnchor.constraint(equalTo: usernameLabel.trailingAnchor, constant: 8),
            usernameField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            usernameField.heightAnchor.constraint(equalToConstant: 44),
            
            
            firstNameLabel.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 16),
            firstNameLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            firstNameLabel.widthAnchor.constraint(equalToConstant: 120),
            
            firstNameField.centerYAnchor.constraint(equalTo: firstNameLabel.centerYAnchor),
            firstNameField.leadingAnchor.constraint(equalTo: firstNameLabel.trailingAnchor, constant: 8),
            firstNameField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            firstNameField.heightAnchor.constraint(equalToConstant: 44),
            
            
            lastNameLabel.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 16),
            lastNameLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            lastNameLabel.widthAnchor.constraint(equalToConstant: 120),
            
            lastNameField.centerYAnchor.constraint(equalTo: lastNameLabel.centerYAnchor),
            lastNameField.leadingAnchor.constraint(equalTo: lastNameLabel.trailingAnchor, constant: 8),
            lastNameField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            lastNameField.heightAnchor.constraint(equalToConstant: 44),
            
            
            dobLabel.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 16),
            dobLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            dobLabel.widthAnchor.constraint(equalToConstant: 120),
            
            dobField.centerYAnchor.constraint(equalTo: dobLabel.centerYAnchor),
            dobField.leadingAnchor.constraint(equalTo: dobLabel.trailingAnchor, constant: 8),
            dobField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            dobField.heightAnchor.constraint(equalToConstant: 44),
            
            
            emailLabel.topAnchor.constraint(equalTo: dobField.bottomAnchor, constant: 16),
            emailLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            emailLabel.widthAnchor.constraint(equalToConstant: 120),
            
            emailField.centerYAnchor.constraint(equalTo: emailLabel.centerYAnchor),
            emailField.leadingAnchor.constraint(equalTo: emailLabel.trailingAnchor, constant: 8),
            emailField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            emailField.heightAnchor.constraint(equalToConstant: 44),
            
            
            passwordLabel.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 16),
            passwordLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            passwordLabel.widthAnchor.constraint(equalToConstant: 120),
            
            passwordField.centerYAnchor.constraint(equalTo: passwordLabel.centerYAnchor),
            passwordField.leadingAnchor.constraint(equalTo: passwordLabel.trailingAnchor, constant: 8),
            passwordField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            passwordField.heightAnchor.constraint(equalToConstant: 44),
           
            confirmPasswordLabel.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 16),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            confirmPasswordLabel.widthAnchor.constraint(equalToConstant: 120),
            
            confirmPasswordField.centerYAnchor.constraint(equalTo: confirmPasswordLabel.centerYAnchor),
            confirmPasswordField.leadingAnchor.constraint(equalTo: confirmPasswordLabel.trailingAnchor, constant: 8),
            confirmPasswordField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            confirmPasswordField.heightAnchor.constraint(equalToConstant: 44),
        
            signInButton.topAnchor.constraint(equalTo: userTypeButton.bottomAnchor, constant: 30),
            signInButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 120),
            signInButton.heightAnchor.constraint(equalToConstant: 44),
            signInButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40)
        ])
    }
}
