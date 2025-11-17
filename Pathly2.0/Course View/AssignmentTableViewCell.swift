//
//  AssignmentTableViewCell.swift
//  Pathly
//
//  Created by theo on 11/12/25.
//

import UIKit

class AssignmentTableViewCell: UITableViewCell {
    var wrapperCellView: UIView!
    var titleField: UILabel!
    var dueDateField: UILabel!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWrapperCellView()
        setupTitleField()
        setupDueDateField()
        
        initConstraints()
    }

    func setupWrapperCellView(){
        wrapperCellView = UITableViewCell()
        
        //working with the shadows and colors...
        wrapperCellView.backgroundColor = .white
        wrapperCellView.layer.cornerRadius = 4.0
        wrapperCellView.layer.shadowColor = UIColor.gray.cgColor
        wrapperCellView.layer.shadowOffset = .zero
        wrapperCellView.layer.shadowRadius = 2.0
        wrapperCellView.layer.shadowOpacity = 0.7
        wrapperCellView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(wrapperCellView)
    }
    
    func setupTitleField(){
        titleField = UILabel()
        titleField.font = UIFont.boldSystemFont(ofSize: 14)
        titleField.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(titleField)
    }
    
    func setupDueDateField(){
        dueDateField = UILabel()
        dueDateField.font = UIFont.boldSystemFont(ofSize: 14)
        dueDateField.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(dueDateField)
    }
    
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            wrapperCellView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 4),
            wrapperCellView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            wrapperCellView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            wrapperCellView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -4),
            wrapperCellView.heightAnchor.constraint(equalToConstant: 80),

            titleField.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 10),
            titleField.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 10),
            titleField.centerXAnchor.constraint(equalTo: wrapperCellView.centerXAnchor),
            titleField.bottomAnchor.constraint(equalTo: dueDateField.topAnchor, constant: -10),
            
            dueDateField.topAnchor.constraint(equalTo: titleField.bottomAnchor, constant: 10),
            dueDateField.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 10),
            dueDateField.trailingAnchor.constraint(equalTo: wrapperCellView.trailingAnchor, constant: -10),
            dueDateField.centerXAnchor.constraint(equalTo: wrapperCellView.centerXAnchor),
            dueDateField.bottomAnchor.constraint(equalTo: wrapperCellView.bottomAnchor, constant: -10),
        ])
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
