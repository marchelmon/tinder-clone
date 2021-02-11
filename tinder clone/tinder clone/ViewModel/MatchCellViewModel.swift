//
//  MatchCellViewModel.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-11.
//

import Foundation

struct MatchCellViewModel {
   
    let nameText: String
    var profileImageUrl: URL?
    let uid: String
    
    init(match: Match) {
        self.nameText = match.name
        self.profileImageUrl = URL(string: match.profileImageUrl)
        self.uid = match.uid
    }
    
    
}
