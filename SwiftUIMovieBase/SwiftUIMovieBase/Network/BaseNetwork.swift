//
//  BaseNetwork.swift
//  SwiftUIMovieBase

import Alamofire

final class BaseNetwork {

    private enum Constants {
        static let apiKey = "ApiKey"
        static let baseUrl = "https://api.themoviedb.org/3/"

        enum HeaderInfo {
            static let apiHostKey = "x-rapidapi-host"
            static let apiHostValue = "imdb8.p.rapidapi.com"
            static let apiKey = "x-rapidapi-key"
        }
    }

    private var headers: HTTPHeaders {
        return [Constants.HeaderInfo.apiHostKey: Constants.HeaderInfo.apiHostValue,
                Constants.HeaderInfo.apiKey: apiKey]
    }

    private var apiKey: String {
        PlistReader.readValueOfKey(key: Constants.apiKey)
    }

    static let shared = BaseNetwork()

    func fetch<T: Decodable>(request: BaseRequest,
                             completion: @escaping ((T?, AFError?) -> Void)) {
        let path = Constants.baseUrl + request.path
        AF.request(path, method: request.method, headers: headers).responseDecodable { (response: DataResponse<T?, AFError>) in
            switch response.result {
            case let .success(data):
                completion(data, nil)
            case let.failure(error):
                completion(nil, error)
            }
        }
    }
}
