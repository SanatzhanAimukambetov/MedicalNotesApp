//
//  CreateAccView.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit
import SnapKit

class CreateAccView: UIView {
    
    //MARK: - UI
    let topContainerView = UIView()
    let topBackButton = UIButton()
    let topLabel: UILabel = {
        let topLabel = UILabel()
        topLabel.text = "Create Account"
        topLabel.textColor = .white
        return topLabel
    }()
    
    let mainImage = UIImageView()
    let mainLabel = UILabel()
    
    let fullNameContainerView = UIView()
    let fullNameLabel: UILabel = {
        let fullNamelabel = UILabel()
        fullNamelabel.text = "Full Name"
        return fullNamelabel
    }()
    let fullNameTextField: UITextField = {
        let fullNametf = UITextField()
        fullNametf.placeholder = "Your given name"
        return fullNametf
    }()
    
    let emailContainerView = UIView()
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        return label
    }()
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "E.g: yourname@email.com"
        return tf
    }()
    
    let passwordContainerView = UIView()
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        return label
    }()
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "6-12 characters"
        return tf
    }()
    
    let errorLabel = UILabel()
    
    let signUpButton: UIButton = {
       let signUpButton = UIButton()
        signUpButton.setTitle("Sign Up", for: .normal)
        return signUpButton
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: - Setup
    private func setupViews() {
        
        //Adding subviews to view
        addSubview(topContainerView)
        addSubview(mainImage)
        addSubview(mainLabel)
        addSubview(fullNameContainerView)
        addSubview(emailContainerView)
        addSubview(passwordContainerView)
        addSubview(signUpButton)
        
        //Adding subviews to subviews
        topContainerView.addSubview(topBackButton)
        topContainerView.addSubview(topLabel)
        fullNameContainerView.addSubview(fullNameLabel)
        fullNameContainerView.addSubview(fullNameTextField)
        emailContainerView.addSubview(emailLabel)
        emailContainerView.addSubview(emailTextField)
        passwordContainerView.addSubview(passwordLabel)
        passwordContainerView.addSubview(passwordTextField)
        
        //Adding style to subviews
        Utilities.styleTopContainer(topContainerView)
        Utilities.styleRegularContainer(fullNameContainerView)
        Utilities.styleRegularContainer(emailContainerView)
        Utilities.styleRegularContainer(passwordContainerView)
        Utilities.setupLabelInGreyContainer(fullNameLabel)
        Utilities.setupLabelInGreyContainer(emailLabel)
        Utilities.setupLabelInGreyContainer(passwordLabel)
        Utilities.styleTextField(fullNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
    }
    
    private func setupConstraints() {
        
        //Subviews of view
        topContainerView.snp.makeConstraints { (make) in
            make.leading.trailing.top.equalToSuperview()
            make.height.equalTo(100)
        }
        
        mainImage.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(Constants.gapFromSide)
            make.top.equalTo(topContainerView.snp.bottom).offset(40)
            make.height.width.equalTo(60)
        }
        
        mainLabel.snp.makeConstraints { (make) in
            make.top.equalTo(mainImage.snp.bottom).offset(20)
            make.leading.equalToSuperview().inset(Constants.gapFromSide)
        }
        
        fullNameContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(mainLabel.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromSide)
            make.height.equalTo(Constants.heightOfContainer)
        }
        
        emailContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(fullNameContainerView.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromSide)
            make.height.equalTo(Constants.heightOfContainer)
        }
        
        passwordContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(emailContainerView.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromSide)
            make.height.equalTo(Constants.heightOfContainer)
        }
        
        signUpButton.snp.makeConstraints { (make) in
            make.top.equalTo(passwordContainerView.snp.bottom).offset(80)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromSide)
            make.height.equalTo(Constants.heightOfButton)
        }
        
        //Subviews of subviews
        topBackButton.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(Constants.gapFromSide)
            make.bottom.equalToSuperview().inset(Constants.gapFromSide)
            make.height.width.equalTo(20)
        }
        
        topLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(Constants.gapFromSide)
        }
        
        
        
        
        fullNameLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(Constants.gapFromSide)
            make.top.equalToSuperview().inset(Constants.gapFromTop)
        }
        
        fullNameTextField.snp.makeConstraints { (make) in
            make.top.equalTo(fullNameLabel.snp.bottom).offset(Constants.gapBetweenLabAndTF)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromSide)
        }
        
        emailLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(Constants.gapFromSide)
            make.top.equalToSuperview().inset(Constants.gapFromTop)
        }
        
        emailTextField.snp.makeConstraints { (make) in
            make.top.equalTo(fullNameLabel.snp.bottom).offset(Constants.gapBetweenLabAndTF)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromSide)
        }
        
        passwordLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(Constants.gapFromSide)
            make.top.equalToSuperview().inset(Constants.gapFromTop)
        }
        
        passwordTextField.snp.makeConstraints { (make) in
            make.top.equalTo(fullNameLabel.snp.bottom).offset(Constants.gapBetweenLabAndTF)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromSide)
        }
        
    }

}
