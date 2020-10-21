//
//  TopRatedMoviesViewModel.swift
//  SwiftUIMovieBase

import Alamofire
import Combine

final class TopRatedMoviesViewModel: ObservableObject {

    private var moviePage = 1

    @Published var loading = true
    @Published var topRatedMovies: [Movie] = []

    func fetchTopRatedMovies() {
        loading = true
        self.fetchTopRatedMovies { [weak self] response, error in
            guard let self = self,
                  let topRatedMovies = response?.results else {
                return
            }
            self.topRatedMovies = topRatedMovies
            self.moviePage += 1
            self.loading = false
        }
    }

    private func fetchTopRatedMovies(completion: @escaping (TopRatedMovieResponse?, AFError?) -> Void ) {
        BaseNetwork.shared.fetch(request: TopRatedMovieRequest(page: moviePage), completion: completion)
    }
}
