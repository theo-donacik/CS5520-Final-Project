//
//  AssignmentView.swift
//  Pathly
//
//  Created by theo on 11/12/25.
//

import UIKit

class AssignmentView: UIView {
    var dueDateField: UILabel!
    var descriptionField: UITextView!
    var uploadButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupDueDateField()
        setupUploadButton()
        setupDescriptionField()
        
        initConstraints()
        
    }

    func setupUploadButton() {
        uploadButton = UIButton(type: .system)
        uploadButton.setTitle("Upload Submission", for: .normal)
        uploadButton.showsMenuAsPrimaryAction = true
        uploadButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(uploadButton)
    }
    
    func setupDueDateField(){
        dueDateField = UILabel()
        dueDateField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(dueDateField)
    }

    
    func setupDescriptionField(){
        descriptionField = UITextView()
        descriptionField.isEditable = false
        descriptionField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(descriptionField)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([

            
            dueDateField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            dueDateField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            dueDateField.bottomAnchor.constraint(equalTo: descriptionField.topAnchor, constant: -16),
                       
            descriptionField.topAnchor.constraint(equalTo: dueDateField.bottomAnchor, constant: 32),
            descriptionField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            descriptionField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            descriptionField.bottomAnchor.constraint(equalTo: uploadButton.topAnchor, constant: -16),
            
            uploadButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            uploadButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16),


        ])
    }
}
