//
//  BaseRequest.swift
//  SwiftUIMovieBase

import Alamofire

protocol BaseRequest {

    var method: HTTPMethod { get }

    var path: String { get set }
}

protocol GetRequest: BaseRequest {

    var method: HTTPMethod { get }

    var path: String { get set }
}

extension GetRequest {

    var method: HTTPMethod {
        return .get
    }
}
