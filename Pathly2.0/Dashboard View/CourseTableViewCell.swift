////
////  CourseTableViewCell.swift
////  Pathly
////
////  Created by theo on 10/30/25.

import UIKit

protocol CourseTableViewCellDelegate: AnyObject {
    func didTapDelete(on cell: CourseTableViewCell)
}

class CourseTableViewCell: UITableViewCell {
    
    weak var delegate: CourseTableViewCellDelegate?
    
    var wrapperCellView: UIView!
    var courseNameField: UILabel!
    var courseCodeField: UILabel!
    var instructorField: UILabel!
    var deleteButton: UIButton!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWrapperCellView()
        setupCourseNameField()
        setupCourseCodeField()
        setupInstructorField()
        setupDeleteButton()
        
        initConstraints()
    }
    
    func setupWrapperCellView() {
        wrapperCellView = UIView()
        wrapperCellView.backgroundColor = .white
        wrapperCellView.layer.cornerRadius = 6
        wrapperCellView.layer.shadowColor = UIColor.gray.cgColor
        wrapperCellView.layer.shadowOffset = .zero
        wrapperCellView.layer.shadowOpacity = 0.2
        wrapperCellView.layer.shadowRadius = 3
        wrapperCellView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(wrapperCellView)
    }
    
    func setupCourseNameField() {
        courseNameField = UILabel()
        courseNameField.font = UIFont.boldSystemFont(ofSize: 16)
        courseNameField.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(courseNameField)
    }
    
    func setupCourseCodeField() {
        courseCodeField = UILabel()
        courseCodeField.font = UIFont.systemFont(ofSize: 14)
        courseCodeField.textColor = .darkGray
        courseCodeField.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(courseCodeField)
    }
    
    func setupInstructorField() {
        instructorField = UILabel()
        instructorField.font = UIFont.systemFont(ofSize: 14)
        instructorField.textColor = .gray
        instructorField.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(instructorField)
    }
    
    func setupDeleteButton() {
        deleteButton = UIButton(type: .system)
        deleteButton.setImage(UIImage(systemName: "trash"), for: .normal)
        deleteButton.tintColor = .red
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        deleteButton.addTarget(self, action: #selector(onDeletePressed), for: .touchUpInside)
        wrapperCellView.addSubview(deleteButton)
    }
    
    @objc func onDeletePressed() {
        delegate?.didTapDelete(on: self)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            wrapperCellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6),
            wrapperCellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            wrapperCellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            wrapperCellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -6),
            wrapperCellView.heightAnchor.constraint(equalToConstant: 100),
            
            courseNameField.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 12),
            courseNameField.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 12),
            courseNameField.trailingAnchor.constraint(equalTo: deleteButton.leadingAnchor, constant: -10),
            
            courseCodeField.topAnchor.constraint(equalTo: courseNameField.bottomAnchor, constant: 6),
            courseCodeField.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 12),
            
            instructorField.topAnchor.constraint(equalTo: courseCodeField.bottomAnchor, constant: 4),
            instructorField.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 12),
            
            deleteButton.centerYAnchor.constraint(equalTo: wrapperCellView.centerYAnchor),
            deleteButton.trailingAnchor.constraint(equalTo: wrapperCellView.trailingAnchor, constant: -12),
            deleteButton.widthAnchor.constraint(equalToConstant: 30),
            deleteButton.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
