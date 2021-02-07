//
//  RegistrationViewModel.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-06.
//

import Foundation

struct RegistrationViewModel {
    var email: String?
    var password: String?
    var fullName: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false && fullName?.isEmpty == false
    }
}
