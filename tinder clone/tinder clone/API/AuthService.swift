//
//  AuthService.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-07.
//

import UIKit
import Firebase

struct AuthCredentials {
    let email: String
    let fullname: String
    let password: String
    let profileImage: UIImage
}


struct AuthService {
    
    static func registerUser(withCredentials credentials: AuthCredentials, completion: ((Error?) -> Void)?) {
    
        Service.uploadImage(image: credentials.profileImage) { imageUrl in
            Auth.auth().createUser(withEmail: credentials.email, password: credentials.password) { (result, error) in
                if let error = error {
                    print("DEBUG: error register to firebase, \(error.localizedDescription)")
                    return
                }
                
                guard let uid = result?.user.uid else { return }
                
                let data = ["email": credentials.email, "fullname": credentials.fullname, "imageUrl": imageUrl, "uid": uid, "age": 20] as [String : Any]
                
                
                Firestore.firestore().collection("users").document(uid).setData(data, completion: completion)
                
            }
            
        }
        
    }
    
    
}

