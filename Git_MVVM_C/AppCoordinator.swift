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
    
    
    //instantiate one api client
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
//        navigationController.isNavigationBarHidden = true
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self //u can add new coordinator to view controller here
        navigationController.pushViewController(vc, animated: true)
    }
    
    func launchFirstVC(){
        let firstCoordinator = FirstCoordinator(navController : navigationController)
        firstCoordinator.start()
    }
    
    func launchSecondVC(){
        let secondCoordinator = SecondCoordinator(navController : navigationController)
        secondCoordinator.start()
    }
    
    
}
