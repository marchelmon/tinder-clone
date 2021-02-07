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
    var fullname: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false && fullname?.isEmpty == false
    }
}
