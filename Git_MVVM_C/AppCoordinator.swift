//
//  AppCoordinator.swift
//  Git_MVVM_C
//
//  Created by David Ilenwabor on 07/08/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import UIKit

class AppCoordinator : Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
        //navigationController.isNavigationBarHidden = true
    }
    
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
