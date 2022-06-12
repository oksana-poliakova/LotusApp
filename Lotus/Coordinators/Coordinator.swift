//
//  AppCoordinator.swift
//  Lotus
//
//  Created by Oksana Poliakova on 11.06.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
