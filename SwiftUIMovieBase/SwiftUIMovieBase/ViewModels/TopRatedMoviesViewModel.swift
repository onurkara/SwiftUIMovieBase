//
//  TopRatedMoviesViewModel.swift
//  SwiftUIMovieBase

import Alamofire
import Combine

final class TopRatedMoviesViewModel: ObservableObject {

    @Published var loading = true

    init() {
        fetchTopRatedMovies()
    }

    func fetchTopRatedMovies() {
        fetchTopRatedMovies { [weak self] response, error in
            guard let self = self else {
                return
            }
            self.loading = false
        }
    }

    private func fetchTopRatedMovies(completion: @escaping (TopRatedMovieResponse?, AFError?) -> Void ) {
        BaseNetwork.shared.fetch(request: TopRatedMovieRequest(), completion: completion)
    }
}
