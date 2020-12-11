//
//  CreateAccViewController.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit

class CreateAccViewController: UIViewController {

    let createAccView = CreateAccView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func validateFields() -> String? {
        
        //Check that all fields are filled in
        if createAccView.fullNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            createAccView.emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            createAccView.passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields"
        }
        
        //Check is the password is secure
        let cleanedPassword = createAccView.passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) {
            return "Please make sure your password is at least 6 characters, contains a special character and a number"
        }
        
        return nil
    }
    
    @objc private func signUpTapped() {
        
        // Validate the fields
        let error = validateFields()
        
        if error != nil {
            
            
        }
        // Create the user
        
        // Transition to the home screen
    }

}
