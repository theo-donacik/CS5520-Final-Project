//
//  ProfileViewController.swift
//  Pathly
//
//  Created by Namya Singh on 10/30/25.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileView = ProfileView()
    var currentUser: User?

    override func loadView() {
        view = profileView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"

        profileView.usernameLabel.text = "Username: \(currentUser!.username)"
        profileView.firstNameLabel.text = "First Name: \(currentUser!.firstName)"
        profileView.lastNameLabel.text = "Last Name: \(currentUser!.lastName)"
        profileView.dobLabel.text = "DOB: \(currentUser!.dob)"
        profileView.emailLabel.text = "Email: \(currentUser!.email)"
        profileView.userTypeLabel.text = "User Type: \(currentUser!.userType)"
    }
}
