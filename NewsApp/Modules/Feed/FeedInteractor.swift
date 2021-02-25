//
//  FeedInteractor.swift
//  NewsApp
//
//  Created by Евгений Самарин on 12.02.2021.
//  
//

import Foundation

final class FeedInteractor {
	weak var output: FeedInteractorOutput?
}

extension FeedInteractor: FeedInteractorInput {
}
