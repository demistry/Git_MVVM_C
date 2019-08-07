//
//  Coordinator.swift
//  Git_MVVM_C
//
//  Created by David Ilenwabor on 07/08/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import UIKit

protocol Coordinator{
    
    var childCoordinators : [Coordinator]{get set}
    var navigationController : UINavigationController{get set}
    
    func start()
}
