//
//  SignInViewController.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = SignInView()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
}
