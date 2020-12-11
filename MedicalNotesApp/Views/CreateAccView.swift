//
//  CreateAccView.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit
import SnapKit

class CreateAccView: UIView {
    
    //UI
    let topContainerView = UIView()
    let topBackButton = UIButton()
    let topLabel = UILabel()
    
    let mainImage = UIImageView()
    
    let fullNameContainerView = UIView()
    let fullNameLabel = UILabel()
    let fullNameTextField = UITextField()
    
    let emailContainerView = UIView()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    
    let passwordContainerView = UIView()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    
    let errorLabel = UILabel()
    
    let signUpButton: UIButton = {
       let signUpButton = UIButton()
        signUpButton.setTitle("Sign Up", for: .normal)
        return signUpButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupViews() {
        
        //Adding subviews to view
        addSubview(topContainerView)
        addSubview(mainImage)
        addSubview(fullNameContainerView)
        addSubview(emailContainerView)
        addSubview(passwordContainerView)
        addSubview(signUpButton)
        
        //Adding subviews to subviews
        topContainerView.addSubview(topBackButton)
        topContainerView.addSubview(topLabel)
        fullNameContainerView.addSubview(fullNameLabel)
        fullNameContainerView.addSubview(fullNameTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        
        
        Utilities.styleTextField(fullNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
    }
    
    private func setupConstraints() {
        
        fullNameTextField.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
    }

}
