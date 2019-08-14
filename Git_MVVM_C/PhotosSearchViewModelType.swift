//
//  PhotosSearchViewModelType.swift
//  Git_MVVM_C
//
//  Created by David Ilenwabor on 09/08/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import UIKit

protocol PhotosSearchViewModelType{
    
    
    //Data source is methods that view controller will use to display on its screen, these are usually view controller based methods, in this case it sends to the coordinator as ViewDataType
    
    func showPhotos()
    
    func showNameOfPhotos()
    
    
    
    //Event methods are methods that collect an event from the user via the view and report to the view model, in this case, it collects from the coordinator
    
    func didSelectButton(searchFor search : String, from vc : UIViewController)
    
}

protocol PhotosSearchViewModelCoordinatorDelegate : class{
    //You will have a reference to the coordinator objec in the view model which sets the delegate of its class for implementation, use this to send message from view model to coordinator
    //you set this delegate when you create the view model e.g
    //viewModel.coordinatorDelegate = self in the coordinator class which implements this delegate
    
}

protocol PhotoSearchViewModelDelegate : class{
    //this communicates with the VC to send details to update its screen...set by vc to itself
    //viewmodel.vmdelegate = self in VC class
}
