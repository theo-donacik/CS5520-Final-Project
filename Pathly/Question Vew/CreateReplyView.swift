//
//  CreateAssignmentView.swift
//  Pathly
//
//  Created by theo on 11/14/25.
//

import UIKit

class CreateReplyView: UIView {
    var replyTextField: UITextView!
    var replyLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupReplyTextField()
        setupReplyLabel()

        initConstraints()
        
    }
    
    func setupReplyLabel() {
        replyLabel = UILabel()
        replyLabel.text = "Reply:"
        replyLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(replyLabel)
    }

    
    func setupReplyTextField(){
        replyTextField = UITextView()
        replyTextField.layer.borderColor = UIColor.lightGray.cgColor
        replyTextField.layer.borderWidth = 1.0
        replyTextField.isEditable = true
        replyTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(replyTextField)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            replyLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            replyLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            replyLabel.bottomAnchor.constraint(equalTo: replyTextField.topAnchor, constant: -8),
            
            replyTextField.topAnchor.constraint(equalTo: replyLabel.bottomAnchor, constant: 8),
            replyTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            replyTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            replyTextField.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16),
        ])
    }
}
