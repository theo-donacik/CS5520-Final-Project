//
//  CourseViewController.swift
//  Pathly
//
//  Created by theo on 11/12/25.
//

import UIKit

class CourseViewController: UIViewController {
    let courseView = CourseView()
    
    var assignments = [Assignment]()

    override func loadView() {
        view = courseView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Assignmnents for"
        
        courseView.tableViewAssignments.dataSource = self
        courseView.tableViewAssignments.delegate = self
        courseView.tableViewAssignments.separatorStyle = .none
        
        assignments = [
            Assignment(title: "A1", description: "A11111", due: Date()),
            Assignment(title: "A2", description: "A22222", due: Date()),
            Assignment(title: "A3", description: "A33333", due: Date()),
        ]
        self.courseView.tableViewAssignments.reloadData()
        
        courseView.QnAButton.addTarget(self, action: #selector(onQnAButtonPressed), for: .touchUpInside)
    }
    
    
    @objc func onQnAButtonPressed() {
        let qnaController = QnAViewController()
        self.navigationController?.pushViewController(qnaController, animated: true)
    }
}


extension CourseViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Assigning cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "assignments", for: indexPath) as! AssignmentTableViewCell
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyy, h:mm a"
        
        cell.titleField.text = assignments[indexPath.row].title
        cell.dueDateField.text =  "Due " + dateFormatter.string(from: assignments[indexPath.row].due)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let assignmentController = AssignmentViewController()
        assignmentController.currentAssignmnet = self.assignments[indexPath.row]
        self.navigationController?.pushViewController(assignmentController, animated: true)
    }
    

}

