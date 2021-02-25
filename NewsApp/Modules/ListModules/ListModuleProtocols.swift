//
//  ListModuleProtocols.swift
//  NewsApp
//
//  Created by Евгений Самарин on 11.02.2021.
//  
//

import Foundation

protocol ListModuleModuleInput {
	var moduleOutput: ListModuleModuleOutput? { get }
}

protocol ListModuleModuleOutput: class {
}

protocol ListModuleViewInput: class {
}

protocol ListModuleViewOutput: class {
}

protocol ListModuleInteractorInput: class {
}

protocol ListModuleInteractorOutput: class {
}

protocol ListModuleRouterInput: class {
}
