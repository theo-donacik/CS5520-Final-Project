//
//  QnAView.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import UIKit

class GroupsView: UIView {
    var tableViewGroups: UITableView!
    var newGroupButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupTableViewGroups()
        setupnewGroupButton()
        
        initConstraints()
    }
    
    func setupTableViewGroups(){
        tableViewGroups = UITableView()
        tableViewGroups.register(GroupTableViewCell.self, forCellReuseIdentifier: "groups")
        tableViewGroups.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableViewGroups)
    }
    
    func setupnewGroupButton(){
        newGroupButton = UIButton(type: .system)
        newGroupButton.titleLabel?.font = .systemFont(ofSize: 16)
        newGroupButton.setTitle("Create new group", for: .normal)
        newGroupButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(newGroupButton)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            tableViewGroups.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8),
            tableViewGroups.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewGroups.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            tableViewGroups.bottomAnchor.constraint(equalTo: newGroupButton.topAnchor, constant: -16),
            
            newGroupButton.topAnchor.constraint(equalTo: tableViewGroups.bottomAnchor, constant: 16),
            newGroupButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            newGroupButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
