//
//  CustomTextField.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-05.
//

import UIKit

class CustomTextField: UITextField {
    
    init(placeholder: String, secureText: Bool = false) {
        super.init(frame: .zero)
                
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        leftView = spacer
        leftViewMode = .always
        
        borderStyle = .none
        backgroundColor = UIColor(white: 1, alpha: 0.2)
        textColor = .white
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        layer.cornerRadius = 5
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [ .foregroundColor: UIColor(white: 1, alpha: 0.7)])
        isSecureTextEntry = secureText
        keyboardAppearance = .dark
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
