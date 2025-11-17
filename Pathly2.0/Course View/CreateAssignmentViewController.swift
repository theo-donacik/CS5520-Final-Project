//
//  CreateAssignmentViewController.swift
//  Pathly
//
//  Created by theo on 11/14/25.
//

import UIKit

class CreateAssignmentViewController: UIViewController {
    let newAssignmentView = CreateAssignmentView()

    override func loadView() {
        view = newAssignmentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "New Assignment"
        
        let saveAssignmentButton = UIBarButtonItem(
            barButtonSystemItem: .save, target: self,
            action: #selector(onSaveBarButtonTapped)
        )
    
        navigationItem.rightBarButtonItem = saveAssignmentButton
    }
    
    @objc func onSaveBarButtonTapped(){
        navigationController?.popViewController(animated: true)
    }

}
