//
//  QnAViewController.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import UIKit

class GroupsViewController: UIViewController {
    let groupView = GroupsView()
    
    var groups = [Group]()

    override func loadView() {
        view = groupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Groups"
        
        groupView.tableViewGroups.dataSource = self
        groupView.tableViewGroups.delegate = self
        groupView.tableViewGroups.separatorStyle = .none
        
        groups = [
            Group(name: "Group 1", location: "Boston, MA", members: ["User1", "User2"]),
            Group(name: "Group 2", location: "Seattle, WA", members: ["User2", "User3"]),
            Group(name: "Group 3", location: "New York, NY", members: ["User1", "User2", "User3"])
        ]
        self.groupView.tableViewGroups.reloadData()
        
        groupView.newGroupButton.addTarget(self, action: #selector(onNewGroupButtonTapped), for: .touchUpInside)
    }
    
    @objc func onNewGroupButtonTapped() {
        let newGroupController = CreateGroupViewController()
        self.navigationController?.pushViewController(newGroupController, animated: true)
    }
    
}

extension GroupsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groups", for: indexPath) as! GroupTableViewCell
        
        cell.nameField.text = groups[indexPath.row].name
        cell.locationField.text = "Located in " + groups[indexPath.row].location
        
        let joinButton = UIButton(type: .system)
        joinButton.showsMenuAsPrimaryAction = true
        joinButton.sizeToFit()
        joinButton.setImage(UIImage(systemName: "slider.horizontal.3"), for: .normal)
        //MARK: setting up menu for button options click...
        joinButton.menu = UIMenu(title: "Join Group?",
                                    children: [
                                        UIAction(title: "Join Group",handler: {(_) in
                                            self.onJoinButtonPressed(id: self.groups[indexPath.row].name)
                                        })
                                    ])
        //MARK: setting the button as an accessory of the cell...
        cell.accessoryView = joinButton

        return cell
    }
    
    func onJoinButtonPressed(id: String){
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let questionController = QuestionViewController()
//        questionController.currentQuestion = self.questions[indexPath.row]
//        self.navigationController?.pushViewController(questionController, animated: true)
    }
}
