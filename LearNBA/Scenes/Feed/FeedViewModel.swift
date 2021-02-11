//
//  FeedViewModel.swift
//  LearNBA
//
//  Created by Cem Kazım on 11.02.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  KeyZim-MVVM
//

import Foundation

protocol FeedViewModelDelegate: class {
    func setFeedData(_ feedModelList: [FeedModel])
}

class FeedViewModel {
    
    // MARK: - Properties -
    
    var feedModelList = [FeedModel]()
    weak var delegate: FeedViewModelDelegate?
    
    // MARK: - Initialize -
    
    init() {
        getData()
    }
    
    // MARK: - Methods -
    
    func getData() {
        FeedServiceLayer.shared.getFeedModelList(completionHandler: { [weak self] (response) in
            guard let self = self else { return }
            self.delegate?.setFeedData(response)
        })
    }
}
