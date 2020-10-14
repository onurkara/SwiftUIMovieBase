//
//  TopRatedMovieRequest.swift
//  SwiftUIMovieBase

import Alamofire

struct TopRatedMovieRequest: GetRequest {

    var page: Int = 1
    var path: String = "movie/top_rated"
    var parameters: Parameters {
        return ["page": page]
    }
}
