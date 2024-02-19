//
//  ViewFactory.swift
//  sapphireApp
//
//  Created by Alena on 19.02.2024.
//

import Foundation
import UIKit

class ViewFactory: NSObject {
    
    static let shared = ViewFactory()
       
    func createRootScreen(title: String) -> RootViewController {
        
        let storyboard = UIStoryboard(storyboard: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: String(describing: RootViewController.self)) as! RootViewController
        let viewModel = RootViewModel(title: title)
        let presenter = RootPresenter(viewModel: viewModel)
        bind(view: controller, presenter: presenter)
        return controller
    }

}



