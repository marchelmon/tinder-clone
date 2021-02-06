//
//  RegistrationController.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-05.
//

import UIKit

class RegistrationController: UIViewController {
    
    //MARK: - Properties
    
    private let selectPhotoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "plus_photo"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(handleSelectPhoto), for: .touchUpInside)
        return button
    }()
    
    private let emailTextField = CustomTextField(placeholder: "Email")
    private let fullNameTextField = CustomTextField(placeholder: "Full Name")
    private let passwordTextField = CustomTextField(placeholder: "Password", secureText: true)

    private let registerButton: AuthButton = {
        let button = AuthButton(title: "Register ", type: .system)
        button.addTarget(self, action: #selector(handleRegisterUser), for: .touchUpInside)
        return button
    }()
    
    private let goToLoginButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(
            string: "Already have an account?  ",
            attributes: [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 16)]
        )
        
        attributedTitle.append(
            NSAttributedString(
                string: "Sign in",
                attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 16)]
            )
        )
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.addTarget(self, action: #selector(handleShowLogin), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        configureUI()
    }
    
    //MARK: - Actions
    
    @objc func handleSelectPhoto() {
        print("DEBUG: handle select photo here")
    }
        
    @objc func handleRegisterUser() {
        print("DEBUG: Handle register ")
    }
    
    @objc func handleShowLogin() {
        navigationController?.popViewController(animated: true)
    }
    

    //MARK: - Helpers
    
    func configureUI() {
    
        configureGradientLayer()

        view.addSubview(selectPhotoButton)
        selectPhotoButton.centerX(inView: view)
        selectPhotoButton.setDimensions(height: 275, width: 275)
        selectPhotoButton.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 8)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField, fullNameTextField, passwordTextField, registerButton])
        stack.axis = .vertical
        stack.spacing = 12
        view.addSubview(stack)
        stack.anchor(
            top: selectPhotoButton.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            paddingTop: 16, paddingLeft: 32, paddingRight: 32
        )
    
        view.addSubview(goToLoginButton)
        goToLoginButton.anchor(
            left: view.leftAnchor,
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            right: view.rightAnchor,
            paddingLeft: 32, paddingRight: 32
        )
    }
    
    

    
}
