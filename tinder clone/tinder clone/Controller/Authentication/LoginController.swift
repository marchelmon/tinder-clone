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
    
    private let emailTextField: UITextField = {
        let tf = UITextField()
        
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        tf.leftView = spacer
        tf.leftViewMode = .always
        
        tf.borderStyle = .none
        tf.backgroundColor = UIColor(white: 1, alpha: 0.2)
        tf.textColor = .white
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        tf.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [ .foregroundColor: UIColor(white: 1, alpha: 0.7)])
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = UITextField()
        
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        tf.leftView = spacer
        tf.leftViewMode = .always
        
        tf.borderStyle = .none
        tf.backgroundColor = UIColor(white: 1, alpha: 0.2)
        tf.textColor = .white
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        tf.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [ .foregroundColor: UIColor(white: 1, alpha: 0.7)])
        return tf
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
            
        configureUI()
        
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
        
        let stack = UIStackView(arrangedSubviews: [emailTextField, passwordTextField])
        stack.axis = .vertical
        stack.spacing = 16
        
        view.addSubview(stack)
        stack.anchor(top: iconImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 24, paddingLeft: 32, paddingRight: 32)
        
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
