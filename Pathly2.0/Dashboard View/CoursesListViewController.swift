//
//  CoursesListViewController.swift
//  
//
//  Created by Namya Singh on 11/12/25.


import UIKit

class CoursesListViewController: UIViewController {
    
    let coursesListView = CoursesListView()
    var courses = [Course]()
    
    var currentUser: User?

    override func loadView() {
        view = coursesListView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "My Courses"

       
        let profileBtn = UIBarButtonItem(
            image: UIImage(systemName: "person.circle"),
            style: .plain,
            target: self,
            action: #selector(openProfile)
        )
        self.navigationItem.leftBarButtonItem = profileBtn
        
       
        if currentUser!.isInstructor {
            let addBtn = UIBarButtonItem(
                barButtonSystemItem: .add,
                target: self,
                action: #selector(showAddCoursePopup)
            )
            self.navigationItem.rightBarButtonItem = addBtn
        }

        
        coursesListView.tableViewCourses.dataSource = self
        coursesListView.tableViewCourses.delegate = self
        coursesListView.tableViewCourses.separatorStyle = .none

        
        courses = [
            Course(name: "Introduction to CS", code: "CS101", instructor: "Dr. Smith", semester: "Fall 2025"),
            Course(name: "Algorithms", code: "CS201", instructor: "Prof. Johnson", semester: "Fall 2025")
        ]
        
        coursesListView.tableViewCourses.reloadData()
    }

    
    @objc func openProfile() {
        let profileVC = ProfileViewController()
        profileVC.currentUser = currentUser!
        navigationController?.pushViewController(profileVC, animated: true)
    }

   
    @objc func showAddCoursePopup() {
        let alert = UIAlertController(title: "Add New Course", message: nil, preferredStyle: .alert)
        
        alert.addTextField { $0.placeholder = "Course Name" }
        alert.addTextField { $0.placeholder = "Course Code" }
        alert.addTextField { $0.placeholder = "Instructor" }
        alert.addTextField { $0.placeholder = "Semester (ex: Fall 2025)" }

        let addAction = UIAlertAction(title: "Add", style: .default) { _ in
            let name = alert.textFields?[0].text ?? ""
            let code = alert.textFields?[1].text ?? ""
            let instructor = alert.textFields?[2].text ?? ""
            let semester = alert.textFields?[3].text ?? ""
            
            if name.isEmpty || code.isEmpty || instructor.isEmpty || semester.isEmpty {
                self.showError("Fill all fields")
                return
            }
            
            let newCourse = Course(name: name, code: code, instructor: instructor, semester: semester)
            self.courses.append(newCourse)
            self.coursesListView.tableViewCourses.reloadData()
        }

        alert.addAction(addAction)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))

        present(alert, animated: true)
    }
    
    func showError(_ msg: String) {
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}



extension CoursesListViewController: UITableViewDelegate, UITableViewDataSource, CourseTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "courses", for: indexPath) as! CourseTableViewCell
        
        let course = courses[indexPath.row]
        
        cell.courseNameField.text = course.name
        cell.courseCodeField.text = course.code
        cell.instructorField.text = "Instructor: \(course.instructor)"

        
        cell.deleteButton.isHidden = !(currentUser!.isInstructor)
        
        cell.delegate = self
        
        return cell
    }

  
    func didTapDelete(on cell: CourseTableViewCell) {
        guard let indexPath = coursesListView.tableViewCourses.indexPath(for: cell) else { return }

        courses.remove(at: indexPath.row)
        coursesListView.tableViewCourses.deleteRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let courseVC = CourseViewController()
        navigationController?.pushViewController(courseVC, animated: true)
    }
}
