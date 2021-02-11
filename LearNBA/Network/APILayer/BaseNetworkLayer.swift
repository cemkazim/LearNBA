//
//  BaseNetworkLayer.swift
//  LearNBA
//
//  Created by Cem Kazım on 11.02.2021.
//

import Alamofire
import RxSwift

class BaseNetworkLayer {
    
    static let shared = BaseNetworkLayer()
    
    private init() {}
    
    func request<T: Decodable>(url: String, method: HTTPMethod, parameters: Parameters? = nil) -> Observable<T> {
        return Observable.create { observer -> Disposable in
            AF.request(url, method: method, parameters: parameters, encoding: URLEncoding.default).response { (response) in
                guard let remoteData = response.data else { return }
                do {
                    let localData = try JSONDecoder().decode(T.self, from: remoteData)
                    observer.onNext(localData)
                } catch let error {
                    observer.onError(error)
                }
            }
            return Disposables.create()
        }
    }
}
