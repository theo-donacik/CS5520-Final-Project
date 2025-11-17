//
//  QuestionTableViewCell.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    var wrapperCellView: UIView!
    var titleField: UILabel!
    var numRepliesField: UILabel!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWrapperCellView()
        setupTitleField()
        setupNumRepliesField()
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
    
    func setupNumRepliesField(){
        numRepliesField = UILabel()
        numRepliesField.font = UIFont.systemFont(ofSize: 14)
        numRepliesField.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(numRepliesField)
    }
    
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            wrapperCellView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 4),
            wrapperCellView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            wrapperCellView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            wrapperCellView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -4),
            wrapperCellView.heightAnchor.constraint(equalToConstant: 80),

            titleField.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 10),
            titleField.centerXAnchor.constraint(equalTo: wrapperCellView.centerXAnchor),
            titleField.bottomAnchor.constraint(equalTo: numRepliesField.topAnchor, constant: -10),
            
            numRepliesField.topAnchor.constraint(equalTo: titleField.bottomAnchor, constant: 10),
            numRepliesField.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 10),
            numRepliesField.bottomAnchor.constraint(equalTo: wrapperCellView.bottomAnchor, constant: -10),
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
