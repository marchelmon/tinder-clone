//
//  CardViewModel.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-04.
//

import UIKit

struct CardViewModel {

    let user: User
    let userInfoText: NSAttributedString
    private var imageIndex = 0
    var imageToShow: UIImage?
    
    init(user: User) {
        self.user = user
        imageToShow = user.images.first ?? #imageLiteral(resourceName: "ic_person_outline_white_2x")
        
        let attributedText = NSMutableAttributedString(
            string: user.name,
            attributes: [
                .font: UIFont.systemFont(ofSize: 32, weight: .heavy),
                .foregroundColor: UIColor.white
            ]
        )
        
        attributedText.append(
            NSAttributedString(
                string: "  \(user.age)",
                attributes: [
                    .font: UIFont.systemFont(ofSize: 24),
                    .foregroundColor: UIColor.white
                ]
            )
        )
        self.userInfoText = attributedText
    }
    
    mutating func showNextPhoto() {
        guard imageIndex + 1 != user.images.count else { return }
        imageIndex += 1
        self.imageToShow = user.images[imageIndex]
    }
    
    mutating func showPreviousPhoto() {
        guard imageIndex != 0 else { return }
        imageIndex -= 1
        self.imageToShow = user.images[imageIndex]
    }
    
}
