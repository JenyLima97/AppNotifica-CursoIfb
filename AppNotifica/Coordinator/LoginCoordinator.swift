//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by Jeny on 02/12/25.
//

//Implementa o coordinator e tem a fun de start

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //essa func chama a loginView e a loginViewControler
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController,animated: true)

    }
}

