//
//  DashboardViewController.swift
//  Pathly
//
//  Created by theo on 10/30/25.
//

import UIKit

class DashboardViewController: UIViewController {
    
    let dashboardView = DashboardView()

    override func loadView() {
        view = dashboardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Dashboard"
    }

}
