//
//  AuthButton.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-05.
//

import UIKit

class AuthButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        layer.cornerRadius = 5
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        setTitleColor(.white, for: .normal)
        isEnabled = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
