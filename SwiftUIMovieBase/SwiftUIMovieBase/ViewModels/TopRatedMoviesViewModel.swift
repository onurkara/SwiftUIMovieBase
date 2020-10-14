//
//  TopRatedMoviesViewModel.swift
//  SwiftUIMovieBase

import Alamofire

final class TopRatedMoviesViewModel {

    func fetchTopRatedMovies() {
        fetchTopRatedMovies { response, error in
            
        }
    }

    private func fetchTopRatedMovies(completion: @escaping (TopRatedMovieResponse?, AFError?) -> Void ) {
        BaseNetwork.shared.fetch(request: TopRatedMovieRequest(), completion: completion)
    }
}
