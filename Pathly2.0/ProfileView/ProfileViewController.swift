//
//  ProfileViewController.swift
//  Pathly
//
//  Created by Namya Singh on 10/30/25.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileView = ProfileView()
    var user: User

    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override func loadView() {
        view = profileView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"

        profileView.usernameLabel.text = "Username: \(user.username)"
        profileView.firstNameLabel.text = "First Name: \(user.firstName)"
        profileView.lastNameLabel.text = "Last Name: \(user.lastName)"
        profileView.dobLabel.text = "DOB: \(user.dob)"
        profileView.emailLabel.text = "Email: \(user.email)"
        profileView.userTypeLabel.text = "User Type: \(user.userType)"
    }
}
