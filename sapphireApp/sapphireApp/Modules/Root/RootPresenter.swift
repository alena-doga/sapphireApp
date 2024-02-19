//
//  RootPresenter.swift
//  projectMVP
//
//  Created by Alena on 27.10.2023.
//

import Foundation


class RootPresenter: ViewPresenter, ViewContainer, RootViewOutput {
                
    weak var view: RootViewInput?
    
    let viewModel: RootViewModel
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
    }
    
    func appear() {
        view?.update()
    }
    
    func loadData(completion: VoidClosure?) {
        
    }
}
