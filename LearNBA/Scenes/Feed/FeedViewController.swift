//
//  FeedViewController.swift
//  LearNBA
//
//  Created by Cem Kazım on 11.02.2021.
//  Copyright (c) 2021 LearNBA. All rights reserved.
//
//  KeyZim-MVVM
//

import UIKit

class FeedViewController: UIViewController {
    
    // MARK: - Properties -
    
    lazy var viewModel: FeedViewModel = {
        let viewModel = FeedViewModel()
        viewModel.delegate = self
        return viewModel
    }()
    
    // MARK: - Lifecycles -
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Methods -
}

extension FeedViewController: FeedViewModelDelegate {
}
