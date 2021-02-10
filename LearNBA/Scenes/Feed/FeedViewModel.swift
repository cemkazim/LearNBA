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
}

class FeedViewModel {
    
    // MARK: - Properties -
    
    weak var delegate: FeedViewModelDelegate?
    
    // MARK: - Initialize -
    
    init() {}
    
    // MARK: - Methods -
}
