//
//  ListModulePresenter.swift
//  NewsApp
//
//  Created by Евгений Самарин on 11.02.2021.
//  
//

import Foundation

final class ListModulePresenter {
	weak var view: ListModuleViewInput?
    weak var moduleOutput: ListModuleModuleOutput?
    
	private let router: ListModuleRouterInput
	private let interactor: ListModuleInteractorInput
    
    init(router: ListModuleRouterInput, interactor: ListModuleInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

extension ListModulePresenter: ListModuleModuleInput {
}

extension ListModulePresenter: ListModuleViewOutput {
}

extension ListModulePresenter: ListModuleInteractorOutput {
}
