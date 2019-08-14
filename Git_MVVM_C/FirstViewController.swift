//
//  FirstViewController.swift
//  Git_MVVM_C
//
//  Created by David Ilenwabor on 07/08/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, Storyboarded {
    
    weak var coordinator : FirstCoordinator?
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
