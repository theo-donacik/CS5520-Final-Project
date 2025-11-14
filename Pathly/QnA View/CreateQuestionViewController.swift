//
//  CreateAssignmentViewController.swift
//  Pathly
//
//  Created by theo on 11/14/25.
//

import UIKit

class CreateQuestionViewController: UIViewController {
    let newQuestionView = CreateQuestionView()


    override func loadView() {
        view = newQuestionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "New Question"
        
        let saveQuestiontButton = UIBarButtonItem(
            barButtonSystemItem: .save, target: self,
            action: #selector(onSaveBarButtonTapped)
        )
    
        navigationItem.rightBarButtonItem = saveQuestiontButton
    }
    
    @objc func onSaveBarButtonTapped(){
        navigationController?.popViewController(animated: true)
    }

}
