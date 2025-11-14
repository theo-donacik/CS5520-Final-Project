//
//  CreateAssignmentViewController.swift
//  Pathly
//
//  Created by theo on 11/14/25.
//

import UIKit
import MapKit

class CreateGroupViewController: UIViewController {
    let newGroupView = CreateGroupView()

    let locationManager = CLLocationManager()

    override func loadView() {
        view = newGroupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "New Group"
        
        let saveQuestiontButton = UIBarButtonItem(
            barButtonSystemItem: .save, target: self,
            action: #selector(onSaveBarButtonTapped)
        )
    
        navigationItem.rightBarButtonItem = saveQuestiontButton
        
        newGroupView.buttonCurrentLocation.addTarget(self, action: #selector(onButtonCurrentLocationTapped), for: .touchUpInside)

        setupLocationManager()
        
        onButtonCurrentLocationTapped()
    }
    
    @objc func onButtonCurrentLocationTapped(){
        if let uwLocation = locationManager.location{
            self.newGroupView.mapView.centerToLocation(location: uwLocation)
        }
    }
    
    @objc func onSaveBarButtonTapped(){
        navigationController?.popViewController(animated: true)
    }

}

extension MKMapView{
    func centerToLocation(location: CLLocation, radius: CLLocationDistance = 1000){
        let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: radius,
            longitudinalMeters: radius
        )
        setRegion(coordinateRegion, animated: true)
    }
}

