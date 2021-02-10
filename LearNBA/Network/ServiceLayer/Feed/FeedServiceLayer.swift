//
//  FeedServiceLayer.swift
//  LearNBA
//
//  Created by Cem Kazım on 11.02.2021.
//

import Foundation
import RxSwift

class FeedServiceLayer {
    
    static let shared = FeedServiceLayer()
    private var disposeBag = DisposeBag()
    
    func getMovieList(completionHandler: @escaping ([FeedModel]) -> ()) {
        BaseNetworkLayer
            .shared
            .request(requestUrl: "")
            .subscribe(onNext: { (data: FeedModel) in
                completionHandler([data])
            }, onError: { (error: Error) in
                print(error)
            }).disposed(by: disposeBag)
    }
}
