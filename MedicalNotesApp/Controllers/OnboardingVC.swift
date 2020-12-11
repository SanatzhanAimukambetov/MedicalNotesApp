//
//  ViewController.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit
import SnapKit

class OnboardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = OnboardingView()
        view.backgroundColor = .white
    }
}

