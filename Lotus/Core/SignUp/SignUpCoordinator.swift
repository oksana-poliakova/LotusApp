//
//  SignUpCoordinator.swift
//  Lotus
//
//  Created by Oksana Poliakova on 18.06.2022.
//

import UIKit

final class SignUpCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
