//
//  AssignmentViewController.swift
//  Pathly
//
//  Created by theo on 11/12/25.
//

import UIKit
import PhotosUI

class AssignmentViewController: UIViewController {
    let assignmentView = AssignmentView()
    
    var currentAssignmnet: Assignment?
    
    override func loadView() {
        view = assignmentView
        
        assignmentView.uploadButton.menu = getMenuImagePicker()
    }
    
    func getMenuImagePicker() -> UIMenu{
        let menuItems = [
            UIAction(title: "Camera",handler: {(_) in
                self.pickUsingCamera()
            }),
            UIAction(title: "Gallery",handler: {(_) in
                self.pickPhotoFromGallery()
            })
        ]
        
        return UIMenu(title: "Select source", children: menuItems)
    }
    
    //MARK: take Photo using Camera...
    func pickUsingCamera(){
        let cameraController = UIImagePickerController()
        cameraController.sourceType = .camera
        cameraController.allowsEditing = true
        cameraController.delegate = self
        present(cameraController, animated: true)
    }
    
    func pickPhotoFromGallery(){
        var configuration = PHPickerConfiguration()
        configuration.filter = PHPickerFilter.any(of: [.images])
        configuration.selectionLimit = 1
        
        let photoPicker = PHPickerViewController(configuration: configuration)
        
        photoPicker.delegate = self
        present(photoPicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyy, h:mm a"
        
        self.navigationItem.title = currentAssignmnet?.title
        
        self.assignmentView.dueDateField.text = "Due " + dateFormatter.string(from: (currentAssignmnet?.due)!)
        self.assignmentView.descriptionField.text = currentAssignmnet?.description
    }

}

extension AssignmentViewController:PHPickerViewControllerDelegate{
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        
        print(results)
        
        let itemprovider = results.map(\.itemProvider)
        
        for item in itemprovider{
            if item.canLoadObject(ofClass: UIImage.self){
                item.loadObject(ofClass: UIImage.self, completionHandler: { (image, error) in
                    DispatchQueue.main.async{
                        if let uwImage = image as? UIImage{
//                            self.addContactScreen.buttonTakePhoto.setImage(
//                                uwImage.withRenderingMode(.alwaysOriginal),
//                                for: .normal
//                            )
//                            self.pickedImage = uwImage
                        }
                    }
                })
            }
        }
    }
}

extension AssignmentViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        if let image = info[.editedImage] as? UIImage{
//            self.addContactScreen.buttonTakePhoto.setImage(
//                image.withRenderingMode(.alwaysOriginal),
//                for: .normal
//            )
//            self.pickedImage = image
        }else{
            // Do your thing for No image loaded...
        }
    }
}
