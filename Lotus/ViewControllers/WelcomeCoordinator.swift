//
//  WelcomeCoordinator.swift
//  Lotus
//
//  Created by Oksana Poliakova on 11.06.2022.
//

import UIKit

final class WelcomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("Super")
    }
}
