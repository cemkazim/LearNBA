//
//  FeedModel.swift
//  LearNBA
//
//  Created by Cem Kazım on 11.02.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  KeyZim-MVVM
//

import Foundation

struct FeedModel: Decodable {
    
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name
    }
}
