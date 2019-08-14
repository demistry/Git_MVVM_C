//
//  ViewController.swift
//  Git_MVVM_C
//
//  Created by David Ilenwabor on 07/08/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator : AppCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        coordinator?.navigationController.isNavigationBarHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        coordinator?.navigationController.isNavigationBarHidden = false
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    @IBAction func launchFirstVC(_ sender: UIButton) {
        coordinator?.launchFirstVC()
    }
    @IBAction func launchSecondVC(_ sender: UIButton) {
        coordinator?.launchSecondVC()
    }
}

extension ViewController : UINavigationControllerDelegate, UIGestureRecognizerDelegate{}

