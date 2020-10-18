//
//  TopRatedMoviesViewModel.swift
//  SwiftUIMovieBase

import Alamofire
import Combine

final class TopRatedMoviesViewModel: ObservableObject {

    @Published var loading = true
    @Published var topRatedMovies: [Movie] = []

    init() {
        fetchTopRatedMovies()
    }

    func fetchTopRatedMovies() {
        fetchTopRatedMovies { [weak self] response, error in
            guard let self = self,
                  let topRatedMovies = response?.results else {
                return
            }
            self.topRatedMovies = topRatedMovies
            self.loading = false
        }
    }

    private func fetchTopRatedMovies(completion: @escaping (TopRatedMovieResponse?, AFError?) -> Void ) {
        BaseNetwork.shared.fetch(request: TopRatedMovieRequest(), completion: completion)
    }
}
