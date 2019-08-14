//
//  FirstCoordinator.swift
//  Git_MVVM_C
//
//  Created by David Ilenwabor on 07/08/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import UIKit

class FirstCoordinator : Coordinator{
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    func start() {
        let vc = FirstViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    init(navController : UINavigationController) {
        self.navigationController = navController
        
    }
    
    
}
