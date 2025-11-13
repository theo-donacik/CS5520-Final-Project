//
//  QnAView.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import UIKit

class QnAView: UIView {
    var tableViewQuestions: UITableView!
    var newQuestionButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupTableViewQuestions()
        setupNewQuestionButton()
        
        initConstraints()
    }
    
    //MARK: the table view to show the list of contacts...
    func setupTableViewQuestions(){
        tableViewQuestions = UITableView()
        tableViewQuestions.register(QuestionTableViewCell.self, forCellReuseIdentifier: "questions")
        tableViewQuestions.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableViewQuestions)
    }
    
    func setupNewQuestionButton(){
        newQuestionButton = UIButton(type: .system)
        newQuestionButton.titleLabel?.font = .systemFont(ofSize: 16)
        newQuestionButton.setTitle("Ask a question", for: .normal)
        newQuestionButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(newQuestionButton)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            tableViewQuestions.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8),
            tableViewQuestions.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewQuestions.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            tableViewQuestions.bottomAnchor.constraint(equalTo: newQuestionButton.topAnchor, constant: -16),
            
            newQuestionButton.topAnchor.constraint(equalTo: tableViewQuestions.bottomAnchor, constant: 16),
            newQuestionButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            newQuestionButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }
    
    //MARK: initializing constraints...
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
