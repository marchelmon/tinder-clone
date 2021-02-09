//
//  ProfileController.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-09.
//

import UIKit

class ProfileController: UIViewController {
    
    
    //MARK: - Properties
    private let user: User
    
    //MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()

    }
    
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
    }
}
