//
//  ForgotPasswordCoordinator.swift
//  Lotus
//
//  Created by Oksana Poliakova on 20.06.2022.
//

import UIKit

final class ForgotPasswordCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
