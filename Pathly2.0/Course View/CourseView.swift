//
//  CourseView.swift
//  Pathly
//
//  Created by theo on 11/12/25.
//

import UIKit

class CourseView: UIView {
    var tableViewAssignments: UITableView!
    
    var buttonGroupView: UIView!
    var QnAButton: UIButton!
    var groupsButton: UIButton!
    var addAssignmnetButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupTableViewAssignments()
        setupButtonGroupView()
        setupGroupsButton()
        setupQnAButton()
        setupAddAssignmnetButton()
        
        initConstraints()
    }
    
    func setupTableViewAssignments(){
        tableViewAssignments = UITableView()
        tableViewAssignments.register(AssignmentTableViewCell.self, forCellReuseIdentifier: "assignments")
        tableViewAssignments.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableViewAssignments)
    }
    
    func setupButtonGroupView(){
        buttonGroupView = UIView()
        buttonGroupView.backgroundColor = .white
        buttonGroupView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonGroupView)
    }

    func setupQnAButton(){
        QnAButton = UIButton(type: .system)
        QnAButton.titleLabel?.font = .systemFont(ofSize: 16)
        QnAButton.setTitle("Q&A", for: .normal)
        QnAButton.translatesAutoresizingMaskIntoConstraints = false
        buttonGroupView.addSubview(QnAButton)
    }
    
    func setupGroupsButton(){
        groupsButton = UIButton(type: .system)
        groupsButton.titleLabel?.font = .systemFont(ofSize: 16)
        groupsButton.setTitle("Groups", for: .normal)
        groupsButton.translatesAutoresizingMaskIntoConstraints = false
        buttonGroupView.addSubview(groupsButton)
    }
    
    func setupAddAssignmnetButton(){
        addAssignmnetButton = UIButton(type: .system)
        addAssignmnetButton.titleLabel?.font = .systemFont(ofSize: 16)
        addAssignmnetButton.setTitle("New Assignment", for: .normal)
        addAssignmnetButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(addAssignmnetButton)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            buttonGroupView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 8),
            buttonGroupView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            buttonGroupView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            buttonGroupView.heightAnchor.constraint(equalToConstant: 50),
            buttonGroupView.bottomAnchor.constraint(equalTo: tableViewAssignments.topAnchor, constant: -8),
            
            QnAButton.topAnchor.constraint(equalTo: buttonGroupView.topAnchor, constant: 8),
            QnAButton.leadingAnchor.constraint(equalTo: buttonGroupView.leadingAnchor, constant: 8),
            
            groupsButton.topAnchor.constraint(equalTo: buttonGroupView.topAnchor, constant: 8),
            groupsButton.trailingAnchor.constraint(equalTo: buttonGroupView.trailingAnchor, constant: -8),
            
            tableViewAssignments.topAnchor.constraint(equalTo: buttonGroupView.bottomAnchor, constant: 8),
            tableViewAssignments.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewAssignments.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            tableViewAssignments.bottomAnchor.constraint(equalTo: addAssignmnetButton.topAnchor, constant: -16),
            
            addAssignmnetButton.topAnchor.constraint(equalTo: tableViewAssignments.bottomAnchor, constant: 16),
            addAssignmnetButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            addAssignmnetButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
        ])
    }
    
    //MARK: initializing constraints...
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
