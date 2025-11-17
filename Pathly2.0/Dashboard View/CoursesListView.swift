//
//  CoursesListView.swift
//  
//
//  Created by Namya Singh on 11/12/25.

//import UIKit
//
//class CoursesListView: UIView {
//    var tableViewCourses: UITableView!
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.backgroundColor = .white
//        
//        setupTableViewCourses()
//        initConstraints()
//    }
//    
//    func setupTableViewCourses(){
//        tableViewCourses = UITableView()
//        tableViewCourses.register(CourseTableViewCell.self, forCellReuseIdentifier: "courses")
//        tableViewCourses.translatesAutoresizingMaskIntoConstraints = false
//        self.addSubview(tableViewCourses)
//    }
//    
//    func initConstraints(){
//        NSLayoutConstraint.activate([
//            tableViewCourses.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8),
//            tableViewCourses.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
//            tableViewCourses.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
//            tableViewCourses.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8),
//        ])
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
import UIKit

class CoursesListView: UIView {
    var tableViewCourses: UITableView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setupTableViewCourses()
        initConstraints()
    }
    
    func setupTableViewCourses() {
        tableViewCourses = UITableView()
        tableViewCourses.register(CourseTableViewCell.self, forCellReuseIdentifier: "courses")
        tableViewCourses.translatesAutoresizingMaskIntoConstraints = false
        addSubview(tableViewCourses)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            tableViewCourses.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            tableViewCourses.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewCourses.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
            tableViewCourses.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
