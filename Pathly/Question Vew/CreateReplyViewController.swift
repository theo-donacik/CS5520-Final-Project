//
//  CreateAssignmentViewController.swift
//  Pathly
//
//  Created by theo on 11/14/25.
//

import UIKit

class CreateReplyViewController: UIViewController {
    let newReplyView = CreateReplyView()


    override func loadView() {
        view = newReplyView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "New Reply"
        
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
