//
//  ProfileView.swift
//  Pathly
//
//  Created by Namya Singh on 10/30/25.
//

import UIKit

class ProfileView: UIView {

    let usernameLabel = UILabel()
    let firstNameLabel = UILabel()
    let lastNameLabel = UILabel()
    let dobLabel = UILabel()
    let emailLabel = UILabel()
    let userTypeLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white

        let labels = [
            usernameLabel,
            firstNameLabel,
            lastNameLabel,
            dobLabel,
            emailLabel,
            userTypeLabel
        ]

        labels.forEach { label in
            label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            label.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(label)
        }

        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            firstNameLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 20),
            firstNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            lastNameLabel.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 20),
            lastNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            dobLabel.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: 20),
            dobLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            emailLabel.topAnchor.constraint(equalTo: dobLabel.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            userTypeLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 20),
            userTypeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
