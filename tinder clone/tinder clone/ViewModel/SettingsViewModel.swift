//
//  SettingsViewModel.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-08.
//

import Foundation

enum SettingsSection: Int, CaseIterable {
    case name
    case profession
    case age
    case bio
    case ageRange
    
    var description: String {
        switch self {
        
        case .name: return "Name"
        case .profession: return "Profession"
        case .age: return "Age"
        case .bio: return "Bio"
        case .ageRange: return "Seeking age range"
            
        }
    }
}

struct SettingsViewModel {
    private let user: User
    private let section: SettingsSection
    
    let placeholderText: String
    var value: String?
    
    var shouldHideInputField: Bool {
        return section == .ageRange
    }
    
    var shouldHideSlider: Bool {
        return section != .ageRange
    }
    
    init(user: User, section: SettingsSection) {
        self.user = user
        self.section = section
        
        placeholderText = "Enter \(section.description.lowercased()).."
        
        switch section {
        
        case .name:
            value = user.name
        case .profession:
            value = user.profession
        case .age:
            value = String(user.age)
        case .bio:
            value = user.bio
        case .ageRange:
            break
        }
    }
    
}

