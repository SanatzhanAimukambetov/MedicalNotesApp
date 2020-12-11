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
        
        textfield.backgroundColor = Constants.colorLightGrey
        textfield.borderStyle = .none
    }
    
    static func styleFilledButton(_ button: UIButton) {
        
        button.backgroundColor = Constants.colorLightBlue
        button.layer.cornerRadius = 20.0
        button.tintColor = UIColor.white
    }
    
    static func styleEmptyButton(_ button: UIButton) {
        
        button.backgroundColor = .white
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 20.0
        button.layer.borderColor = Constants.colorLightBlue.cgColor
        button.setTitleColor(Constants.colorLightBlue, for: .normal)
    }
    
    static func styleRegularContainer(_ container: UIView) {
        
        container.layer.cornerRadius = 20.0
        container.backgroundColor = Constants.colorLightGrey
    }
    
    static func styleTopContainer(_ container: UIView) {
        
        container.backgroundColor = Constants.colorLightBlue
    }
    
    static func setupCornerRadius(_ container: UIView) {
        
        container.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 30)
    }
    
    static func isPasswordValid(_ password: String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%?&])[A-Za-z\\d$@$#!%*?&]{6,12}")
        
        return passwordTest.evaluate(with: password)
    }
    
}

extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.red.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: -12)
        layer.shadowRadius = 40

    }
}


