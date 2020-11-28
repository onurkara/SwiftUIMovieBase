//
//  TopRatedMovieView.swift
//  SwiftUIMovieBase

import SwiftUI

struct TopRatedMovieView: View {

    @ObservedObject var viewModel = TopRatedMoviesViewModel()
    private let pageTitle = "Top Rated Movies"

    var body: some View {
        NavigationView {
            List(viewModel.topRatedMovies) { movie in
                NavigationLink(destination: TopRatedMovieDetailView(movie: movie)) {
                    VStack(alignment: .leading) {
                        Text(movie.title)
                        Text(movie.releaseDate)
                    }
                }
                if movie == viewModel.topRatedMovies.last {
                    VStack(alignment: .center) {
                      ProgressView().onAppear(perform: {
                        viewModel.fetchTopRatedMovies()
                        })
                    }.frame(maxWidth: .infinity)
                }
            }.onAppear(perform: {
                viewModel.fetchTopRatedMovies()
            })
            .navigationBarTitle(Text(pageTitle))
        }
    }
}
