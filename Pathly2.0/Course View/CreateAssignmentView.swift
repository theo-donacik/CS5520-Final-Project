//
//  CreateAssignmentView.swift
//  Pathly
//
//  Created by theo on 11/14/25.
//

import UIKit

class CreateAssignmentView: UIView {
    var titleField: UITextField!
    var descriptionField: UITextView!
    var dueDatePicker: UIDatePicker!
    var descriptionLabel: UILabel!
    var dueLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupTitleField()
        setupDescriptionField()
        setupDueDatePicker()
        setupDescLabel()
        setupDueLabel()

        initConstraints()
        
    }
    
    func setupDescLabel() {
        descriptionLabel = UILabel()
        descriptionLabel.text = "Description:"
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(descriptionLabel)
    }
    
    func setupDueLabel() {
        dueLabel = UILabel()
        dueLabel.text = "Due Date:"
        dueLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(dueLabel)
    }
    
    
    func setupTitleField() {
        titleField = UITextField()
        titleField.placeholder = "Title"
        titleField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleField)
    }
    
    func setupDueDatePicker() {
        dueDatePicker = UIDatePicker()
        dueDatePicker.datePickerMode = .dateAndTime
        dueDatePicker.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(dueDatePicker)
    }

    
    func setupDescriptionField(){
        descriptionField = UITextView()
        descriptionField.layer.borderColor = UIColor.lightGray.cgColor
        descriptionField.layer.borderWidth = 1.0
        descriptionField.isEditable = true
        descriptionField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(descriptionField)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            titleField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            titleField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            titleField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            titleField.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -16),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleField.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            descriptionLabel.bottomAnchor.constraint(equalTo: descriptionField.topAnchor, constant: -8),
            
            descriptionField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8),
            descriptionField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            descriptionField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            descriptionField.bottomAnchor.constraint(equalTo: dueLabel.topAnchor, constant: -8),
            
            dueLabel.topAnchor.constraint(equalTo: descriptionField.bottomAnchor, constant: 8),
            dueLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            dueLabel.bottomAnchor.constraint(equalTo: dueDatePicker.topAnchor, constant: -8),
            
            dueDatePicker.topAnchor.constraint(equalTo: dueLabel.bottomAnchor, constant: 8),
            dueDatePicker.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            dueDatePicker.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16),

        ])
    }
}
