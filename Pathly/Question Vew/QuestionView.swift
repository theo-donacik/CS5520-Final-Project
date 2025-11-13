//
//  QnAView.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import UIKit

class QuestionView: UIView {
    var questionContentView: UIView!
    var questionTitle: UILabel!
    var questionDescription: UILabel!
    var questionAskedBy: UILabel!

    var tableViewReplies: UITableView!
    var newReplyButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setuptableViewReplies()
        setupnewReplyButton()
        setupQuestionContentView()
        setupQuestionTitle()
        setupQuestionDescription()
        setupAskedBy()
        
        initConstraints()
    }
    
    func setupQuestionContentView(){
        questionContentView = UIView()
        questionContentView.backgroundColor = .white
        questionContentView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(questionContentView)
    }
    
    func setupQuestionDescription() {
        questionDescription = UILabel()
        questionDescription.translatesAutoresizingMaskIntoConstraints = false
        questionContentView.addSubview(questionDescription)
    }
    
    func setupAskedBy() {
        questionAskedBy = UILabel()
        questionAskedBy.translatesAutoresizingMaskIntoConstraints = false
        questionContentView.addSubview(questionAskedBy)
    }
    
    func setupQuestionTitle() {
        questionTitle = UILabel()
        questionTitle.font = .boldSystemFont(ofSize: 16)
        questionTitle.translatesAutoresizingMaskIntoConstraints = false
        questionContentView.addSubview(questionTitle)
    }

    
    func setuptableViewReplies(){
        tableViewReplies = UITableView()
        tableViewReplies.register(ReplyTableViewCell.self, forCellReuseIdentifier: "replies")
        tableViewReplies.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableViewReplies)
    }
    
    func setupnewReplyButton(){
        newReplyButton = UIButton(type: .system)
        newReplyButton.titleLabel?.font = .systemFont(ofSize: 16)
        newReplyButton.setTitle("Reply", for: .normal)
        newReplyButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(newReplyButton)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            questionContentView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8),
            questionContentView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            questionContentView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            questionContentView.bottomAnchor.constraint(equalTo: tableViewReplies.topAnchor, constant: -16),
            
            questionTitle.topAnchor.constraint(equalTo: questionContentView.topAnchor, constant: 16),
            questionTitle.bottomAnchor.constraint(equalTo: questionDescription.topAnchor, constant: -8),
            questionTitle.centerXAnchor.constraint(equalTo: self.questionContentView.centerXAnchor),
            
            questionDescription.topAnchor.constraint(equalTo: questionTitle.bottomAnchor, constant: 8),
            questionDescription.bottomAnchor.constraint(equalTo: questionAskedBy.topAnchor, constant: -8),
            questionDescription.centerXAnchor.constraint(equalTo: self.questionContentView.centerXAnchor),
            
            questionAskedBy.topAnchor.constraint(equalTo: questionDescription.bottomAnchor, constant: 8),
            questionAskedBy.bottomAnchor.constraint(equalTo: questionContentView.bottomAnchor, constant: -8),
            questionAskedBy.centerXAnchor.constraint(equalTo: self.questionContentView.centerXAnchor),
            
            tableViewReplies.topAnchor.constraint(equalTo: questionContentView.bottomAnchor, constant: 8),
            tableViewReplies.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewReplies.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            tableViewReplies.bottomAnchor.constraint(equalTo: newReplyButton.topAnchor, constant: -16),
            
            newReplyButton.topAnchor.constraint(equalTo: tableViewReplies.bottomAnchor, constant: 16),
            newReplyButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            newReplyButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }
    
    //MARK: initializing constraints...
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
