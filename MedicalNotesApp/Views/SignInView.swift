//
//  OnboardingView.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit
import SnapKit

class SignInView: UIView {
    let loginTextField: UITextField = {
       let loginTF = UITextField()
        loginTF.backgroundColor = Constants.colorLightGrey
        return loginTF
    }()
    
    let passwordTextField: UITextField = {
        let passwordTF = UITextField()
        passwordTF.backgroundColor = Constants.colorLightGrey
        return passwordTF
    }()
    
    let signInButton: UIButton = {
       let signInButton = UIButton()
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.backgroundColor = .white
        return signInButton
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(signInButton)
    }
    
    private func setupConstraints() {
        loginTextField.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints { (make) in
            make.top.equalTo(loginTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        signInButton.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
        
    }

}
