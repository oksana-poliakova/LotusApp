//
//  Coordinator.swift
//  Lotus
//
//  Created by Oksana Poliakova on 11.06.2022.
//

import UIKit

final class AppCoordinator: Coordinator {
    // MARK: - Properties
    
    var navigationController: UINavigationController
    let window: UIWindow?
    
    // MARK: - Init
    
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
