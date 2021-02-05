//
//  LoginController.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-05.
//

import UIKit

class LoginController: UIViewController {
    
    //MARK: - Properties
    
    private let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "app_icon").withRenderingMode(.alwaysTemplate)
        iv.tintColor = .white
        return iv
    }()
    
    private let emailTextField = CustomTextField(placeholder: "Email")
    private let passwordTextField = CustomTextField(placeholder: "Password", secureText: true)
        
    private let authButton: AuthButton = {
        let button = AuthButton(title: "Log in ", type: .system)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    private let goToRegistrationButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(
            string: "Don't have an account?  ",
            attributes: [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 16)]
        )
        
        attributedTitle.append(
            NSAttributedString(
                string: "Sign up",
                attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 16)]
            )
        )
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.addTarget(self, action: #selector(handleShowRegistration), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
            
        configureUI()
        
    }
    
    //MARK: - Actions
    
    @objc func handleLogin() {
        
    }
    
    @objc func handleShowRegistration() {
        
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        setupGradientLayer()
        
        view.addSubview(iconImageView)
        iconImageView.centerX(inView: view)
        iconImageView.setDimensions(height: 100, width: 100)
        iconImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, authButton])
        stack.axis = .vertical
        stack.spacing = 16
        
        view.addSubview(stack)
        stack.anchor(top: iconImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 24, paddingLeft: 32, paddingRight: 32)
        
        view.addSubview(goToRegistrationButton)
        goToRegistrationButton.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingLeft: 32, paddingRight: 32)
        
    }
    
    func setupGradientLayer() {
        let topColor = #colorLiteral(red: 0.9372549057, green: 0.2617453173, blue: 0.3710942782, alpha: 1)
        let bottomColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.locations = [0, 1]
        view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = view.frame
    }
    
}
