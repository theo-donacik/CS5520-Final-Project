//
//  questionViewController.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import UIKit

class QuestionViewController: UIViewController {
    let questionView = QuestionView()
    
    var currentQuestion: Question?

    var replies = [String]()

    override func loadView() {
        view = questionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Question"
        
        questionView.tableViewReplies.dataSource = self
        questionView.tableViewReplies.delegate = self
        questionView.tableViewReplies.separatorStyle = .none
        
        questionView.questionTitle.text = currentQuestion?.title
        questionView.questionAskedBy.text = currentQuestion?.askedBy
        questionView.questionDescription.text = "Asked by " + ((currentQuestion?.description)!)
        
        replies = (currentQuestion?.replies)!
        
        self.questionView.tableViewReplies.reloadData()
    }
    
}

extension QuestionViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return replies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "replies", for: indexPath) as! ReplyTableViewCell
        
        cell.textField.text = replies[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let assignmentController = AssignmentViewController()
//        assignmentController.currentAssignmnet = self.assignments[indexPath.row]
//        self.navigationController?.pushViewController(assignmentController, animated: true)
    }
}
