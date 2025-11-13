//
//  QnAViewController.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import UIKit

class QnAViewController: UIViewController {
    let qnaView = QnAView()
    
    var questions = [Question]()

    override func loadView() {
        view = qnaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Questions for"
        
        qnaView.tableViewQuestions.dataSource = self
        qnaView.tableViewQuestions.delegate = self
        qnaView.tableViewQuestions.separatorStyle = .none
        
        questions = [
            Question(title: "Q1", description: "Q1 desc", askedBy: "User 1", replies: ["r1", "r2"]),
            Question(title: "Q2", description: "Q2 desc", askedBy: "User21", replies: ["r3", "r4"]),
        ]
        self.qnaView.tableViewQuestions.reloadData()
    }
    
}

extension QnAViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questions", for: indexPath) as! QuestionTableViewCell
        
        cell.titleField.text = questions[indexPath.row].title
        cell.numRepliesField.text = String(questions[indexPath.row].replies.count) + " replies"

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let questionController = QuestionViewController()
        questionController.currentQuestion = self.questions[indexPath.row]
        self.navigationController?.pushViewController(questionController, animated: true)
    }
}
