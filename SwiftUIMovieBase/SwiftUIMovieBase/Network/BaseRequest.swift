//
//  BaseRequest.swift
//  SwiftUIMovieBase

import Alamofire

protocol BaseRequest {

    var method: HTTPMethod { get }

    var path: String { get set }

    var parameters: Parameters { get }
}

extension BaseRequest {

    var parameters: Parameters {
        return [:]
    }
}

protocol GetRequest: BaseRequest {

    var method: HTTPMethod { get }

    var path: String { get set }
}

extension GetRequest {

    var method: HTTPMethod {
        .get
    }
}
