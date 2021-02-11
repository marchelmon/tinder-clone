//
//  Match.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-11.
//

import Foundation

struct Match {
    let name: String
    let profileImageUrl: String
    let uid: String
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? "JDoe"
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        
    }
    
    
}

