//
//  FeedProtocols.swift
//  NewsApp
//
//  Created by Евгений Самарин on 12.02.2021.
//  
//

import Foundation

protocol FeedModuleInput {
	var moduleOutput: FeedModuleOutput? { get }
}

protocol FeedModuleOutput: class {
}

protocol FeedViewInput: class {
    func set(viewModels: [FeedCardViewModel])
}

protocol FeedViewOutput: class {
    func viewDidLoad()
}

protocol FeedInteractorInput: class {
}

protocol FeedInteractorOutput: class {
}

protocol FeedRouterInput: class {
}
