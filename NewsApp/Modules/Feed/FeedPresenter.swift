//
//  FeedPresenter.swift
//  NewsApp
//
//  Created by Евгений Самарин on 12.02.2021.
//  
//

import Foundation

final class FeedPresenter {
	weak var view: FeedViewInput?
    weak var moduleOutput: FeedModuleOutput?
    
	private let router: FeedRouterInput
	private let interactor: FeedInteractorInput
    
    init(router: FeedRouterInput, interactor: FeedInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
    
    
}

extension FeedPresenter: FeedModuleInput {
}

extension FeedPresenter: FeedViewOutput {
    func viewDidLoad() {
        self.view?.set(viewModels: self.makeViewModels())
    }
}

extension FeedPresenter: FeedInteractorOutput {
}

private extension FeedPresenter {
    func makeViewModels() -> [FeedCardViewModel] {
        return [FeedCardViewModel(info: "Wow", title: "Some info", imageName: "feed1", shortDescriprion: "Johnnie it's amazing"),
                FeedCardViewModel(info: "Wow", title: "Some info", imageName: "feed2", shortDescriprion: "Johnnie it's amazing djopwjdpasjidoashdiosajidahiodfhdoau"),
                FeedCardViewModel(info: "Wow", title: "Some info", imageName: "feed3", shortDescriprion: "Johnnie it's amazing fdos[kfdskfdsjfpkdsjfksdjkfldjsklfjdsklfjdklsjfklds")
        
        ]
    }
}
