//
//  Utilities.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import Foundation
import UIKit

class Utilities {
    
    static func styleTextField(_ textfield: UITextField) {
        
        textfield.backgroundColor = Constants.colorOfTextField
        textfield.borderStyle = .none
    }
    
    static func styleFilledButton(_ button: UIButton) {
        
        button.backgroundColor = Constants.colorOfFilledButton
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleEmptyButton(_ button: UIButton) {
        
        button.backgroundColor = .white
        button.setTitleColor(Constants.colorOfFilledButton, for: .normal)
    }
    
    static func isPasswordValid(_ password: String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%?&])[A-Za-z\\d$@$#!%*?&]{6,12}")
        
        return passwordTest.evaluate(with: password)
    }
    
}
