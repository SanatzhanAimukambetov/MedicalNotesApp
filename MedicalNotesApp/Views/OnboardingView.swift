//
//  OnboardingView.swift
//  MedicalNotesApp
//
//  Created by Sanatzhan Aimukambetov on 11.12.2020.
//

import UIKit
import SnapKit

class OnboardingView: UIView {
    let mainImage: UIImageView = {
       let mainImage = UIImageView()
        mainImage.image = #imageLiteral(resourceName: "Onboarding")
        return mainImage
    }()
    
    let createAccButton: UIButton = {
        let createAccButton = UIButton()
        createAccButton.setTitle("Create Account", for: .normal)
        return createAccButton
    }()
    
    let signInButton: UIButton = {
        let signInButton = UIButton()
        signInButton.setTitle("Sign In", for: .normal)
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
        
        addSubview(mainImage)
        addSubview(createAccButton)
        addSubview(signInButton)
        
        Utilities.styleFilledButton(createAccButton)
        Utilities.styleEmptyButton(signInButton)
    }
    
    private func setupConstraints() {
        
        mainImage.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(80)
        }
        
        createAccButton.snp.makeConstraints { (make) in
            make.top.equalTo(mainImage.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromEdge)
            make.height.equalTo(Constants.heightOfButton)
        }
        
        signInButton.snp.makeConstraints { (make) in
            make.top.equalTo(createAccButton.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(Constants.gapFromEdge)
            make.height.equalTo(Constants.heightOfButton)
            make.bottom.equalToSuperview().inset(45)
        }
    }
    

}
