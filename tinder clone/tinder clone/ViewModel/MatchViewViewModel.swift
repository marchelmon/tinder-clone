//
//  MatchViewViewModel.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-10.
//

import Foundation

struct MatchViewViewModel {
    private let currentUser: User
    let matchedUser: User
    
    let matchLabelText: String
    
    var currentUserImageUrl: URL?
    var matchedUserImageUrl: URL?
    
    init(currentUser: User, matchedUser: User) {
        self.currentUser = currentUser
        self.matchedUser = matchedUser
        
        matchLabelText = "You and \(matchedUser.name) have liked each other"
        
        guard let imageUrlString = currentUser.imageURLs.first else { return }
        guard let matchedImageUrlString = matchedUser.imageURLs.first else { return }
        
        currentUserImageUrl = URL(string: imageUrlString)
        matchedUserImageUrl = URL(string: matchedImageUrlString)
    }
}

